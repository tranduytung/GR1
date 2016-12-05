class Examinee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         authentication_keys: [:people_id]

  belongs_to :group_graduated_exam
  has_one :result, dependent: :destroy
  has_many :registers, dependent: :destroy

  # validates :name, presence: true, length: {maximum: 150}
  # validates :people_id, presence: true, length: {maximum: 11},
  #   uniqueness: {case_sensitive: false}
  # validates :student_id, presence: true, length: {is: 8}
  # validates :phone, length: {minimum: 10, maximum: 11}, allow_blank: true
  # validates :home_town, length: {maximum: 150}, allow_blank: true
  # validates :hight_school, length: {maximum: 150}, allow_blank: true
  # validates :birthday, presence: true
  # validates :graduated, default: false
  # validates :year, presence: true

  # def password_required?
  #   super && new_record?
  # end

  # def update_with_password params, *options
  #   encrypted_password.blank? ? update_attributes(params, *options) : super
  # end

  def self.import_csv(file)
    # a block that runs through a loop in our CSV data
    CSV.foreach(file.path, headers: true) do |row|
      # creates a user for each row in the CSV file
      @examinee_info = row.to_hash
      @examinee_info["password"] = @examinee_info["people_id"]
      @examinee_info["password_confirmation"] = @examinee_info["people_id"]
      Examinee.create @examinee_info
    end
  end

  def self.to_csv
    attributes = %w{name people_id student_id phone email home_town hight_school
      birthday graduated graduate_score year group_graduated_exam_id}
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |examinee|
        csv << attributes.map{|attr| examinee.send(attr)}
      end
    end
  end

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      examinee = find_by_id(row["id"]) || new
      examinee.attributes = row.to_hash.slice(*accessible_attributes)
      examinee.attributes["pasword"] = examinee.people_id
      examinee.attributes["password_confirmation"] = examinee.people_id
      if row["graduated"] == "Yes"
        examinee.graduated = true
      else
        examinee.graduated = false
      end
      examinee.save!
      result = examinee.result || Result.new
      result.examinee_id = examinee.id
      result.attributes = row.to_hash.slice(*result_attributes)
      result.save!
    end
  end

  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
      when '.csv' then Roo::Csv.new(file.path, packed: nil, file_warning: :ignore)
      when '.xls' then Roo::Excel.new(file.path, packed: nil, file_warning: :ignore)
      when '.xlsx' then Roo::Excelx.new(file.path, packed: nil, file_warning: :ignore)
    else
      raise "Unknown file type: #{file.original_filename}"
    end
  end

  def self.accessible_attributes
    ["name", "people_id", "student_id", "phone", "email", "home_town",
      "hight_school", "birthday", "graduated", "graduate_score", "year",
      "priority_point", "encourage_point", "average_point",
      "group_graduated_exam_id"]
  end
  def self.result_attributes
    ["math", "literature", "english", "physical", "chemistry", "biological",
    "history", "geography"]
  end
end

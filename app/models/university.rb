class University < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
          authentication_keys: [:code]
  has_many :examinees
  has_many :majors, :dependent => :destroy
  has_many :major_group_exams, through: :majors
  has_many :major_infos, through: :majors
  has_many :registers, through: :majors
  validates :name, presence: true
  validates :code, presence: true
  # validates :password, presence:true

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      university = find_by_id(row["id"]) || new
      university.attributes = row.to_hash.slice(*accessible_attributes)
      university.password = university.code+"123456"
      university.password_confirmation = university.code+"123456"
      university.save!
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
    ["name", "code", "email"]
  end
end

class Major < ActiveRecord::Base

  belongs_to :university
  has_many :registers, :dependent => :destroy
  has_many :major_group_exams, :dependent => :destroy
  has_many :major_infos, :dependent => :destroy
  validates :year, presence: true
  validates :code, presence: true
  validate :major_infos_name

  enum register_status: {end: 0, aspiration_1: 1, aspiration_2: 2, aspiration_3: 3}

  accepts_nested_attributes_for :major_infos, allow_destroy: true
  accepts_nested_attributes_for :major_group_exams, allow_destroy: true

  def self.import(file, university_id)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      major_exist =  Major.find_by code: row["code"]
      if major_exist.nil?
        major_exist = Major.new
        major_exist.attributes = row.to_hash.slice(*accessible_attributes)
        major_exist.university_id = university_id
        major_exist.save!
      end
      major_info = major_exist.major_infos.new
      major_info.attributes = row.to_hash.slice(*major_name_attributes)
      major_info.save!
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
  private

  def major_infos_name
    major_infos.each do |major_info|
      if major_info.name.blank? && !major_info.destroy
      end
    end
  end
  def self.accessible_attributes
    ["code", "target", "year"]
  end
  def self.major_name_attributes
    ["name"]
  end
end

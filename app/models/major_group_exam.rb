class MajorGroupExam < ActiveRecord::Base
  belongs_to :major
  belongs_to :group_exam

  def self.import(file, university_id)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      major =  Major.find_by code: row["code"]
      major_group_exam = major.major_group_exams.new
      group_exam = GroupExam.find_by math: row["math"],
        literature: row["literature"], english: row["english"],
        physical: row["physical"], chemistry: row["chemistry"],
        biological: row["biological"], history: row["history"],
        geography: row["geography"]
      major_group_exam.group_exam_id = group_exam.id
      major_group_exam.save!
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
end

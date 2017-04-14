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

  def self.import_benchmark(file, university_id)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      major =  Major.find_by code: row["code"]
      group_exam = GroupExam.find_by math: row["math"],
        literature: row["literature"], english: row["english"],
        physical: row["physical"], chemistry: row["chemistry"],
        biological: row["biological"], history: row["history"],
        geography: row["geography"]
      major_group_exam = major.major_group_exams.find_by group_exam_id: group_exam.id
      major_group_exam.benchmark1 = row["benchmark"]
      major_group_exam.save!

      # change status register
      major.registers.where('group_exam_id = ? AND
        review_score >= ?', group_exam.id, row["benchmark"]).
        update_all(status: 2)
      major.registers.where('group_exam_id = ? AND
        review_score < ?', group_exam.id, row["benchmark"]).
        update_all(status: 3)
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

  def cal_benchmark_score
    @count_get = (self.major.target * 0.8 / self.major.major_group_exams.count).to_i
    @registers = self.major.registers.where(group_exam_id:
      self.group_exam_id).group(:review_score).count
    @benchmark = cal_score_by @registers, @count_get
  end

  private
  def cal_score_by registers, count
    result = 0
    score_before = 0
    registers.reverse_each do |score, number|
      result += number
      return score_before if result >= count
      score_before = score
    end
  end
end

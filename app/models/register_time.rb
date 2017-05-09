class RegisterTime < ActiveRecord::Base
  validates :start_university_manage, presence: true, on: :update
  validates :end_university_manage, presence: true, on: :update
  validates :start_aspiration_1, presence: true, on: :update
  validates :end_aspiration_1, presence: true, on: :update
  validates :start_update_benchmark_1, presence: true, on: :update
  validates :end_update_benchmark_1, presence: true, on: :update
  validates :start_admission_1, presence: true, on: :update
  validates :end_admission_1, presence: true, on: :update
  validate :aspiration

  private
  def aspiration
    unless start_university_manage.nil? || end_university_manage.nil? ||
      start_aspiration_1.nil? || end_aspiration_1.nil? ||
      start_update_benchmark_1.nil? || end_update_benchmark_1.nil? ||
      start_admission_1.nil? || end_admission_1.nil?

      errors.add(:base, "university_manage") if
        end_university_manage <= start_university_manage
      errors.add(:base, "Ngay ket thuc xet tuyen NV 1 phao lon hon ngay bat dau") if
        end_aspiration_1 <= start_aspiration_1
      errors.add(:base, "update_benchmark_1") if
        start_update_benchmark_1 >= end_update_benchmark_1
      errors.add(:base, "update_benchmark_1") if
        start_admission_1 >= end_admission_1
      errors.add(:base, "end_university_manage start_aspiration_1") if
        end_university_manage >= start_aspiration_1
      errors.add(:base, "end_aspiration_1 start_update_benchmark_1") if
        end_aspiration_1 >= start_update_benchmark_1
      errors.add(:base, "end_update_benchmark_1 start_admission_1") if
        end_update_benchmark_1 >= start_admission_1
    end
  end
end

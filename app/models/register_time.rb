class RegisterTime < ActiveRecord::Base
  validates :start_aspiration_1, presence: true, on: :update
  validates :end_aspiration_1, presence: true, on: :update
  validates :start_aspiration_2, presence: true, on: :update
  validates :end_aspiration_2, presence: true, on: :update
  validates :start_aspiration_3, presence: true, on: :update
  validates :end_aspiration_3, presence: true, on: :update
  validate :aspiration

  private
  def aspiration
    unless start_aspiration_1.nil? || end_aspiration_1.nil? ||
      start_aspiration_2.nil? || end_aspiration_2.nil? || start_aspiration_3.nil? || end_aspiration_3.nil?
      errors.add(:base, "Ngay ket thuc xet tuyen NV 1 phao lon hon ngay bat dau") if
        end_aspiration_1 <= start_aspiration_1
      errors.add(:base, "Ngay ket thuc xet tuyen NV 2 phao lon hon ngay bat dau") if
        end_aspiration_2 <= start_aspiration_2
      errors.add(:base, "Ngay ket thuc xet tuyen NV 3 phao lon hon ngay bat dau") if
        end_aspiration_3 <= start_aspiration_3
      errors.add(:base, "Ngay bat dau xet tuyen NV 2 phao lon hon ngay ket thuc NV 1") if
        start_aspiration_2 <= end_aspiration_1
      errors.add(:base, "Ngay bat dau xet tuyen NV 3 phao lon hon ngay ket thuc NV 2") if
        start_aspiration_3 <= end_aspiration_2
    end
  end
end

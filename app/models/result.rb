class Result < ActiveRecord::Base
  belongs_to :examinee
  validates :math, presence: true
  validates :literature, presence: true
  validates :english, presence: true
  validates :physical, presence: true
  validates :chemistry, presence: true
  validates :biological, presence: true
  validates :history, presence: true
  validates :geography, presence: true

  def find_exam exam
    return self.math if exam == "math"
    return self.literature if exam == "literature"
    return self.english if exam == "english"
    return self.physical if exam == "physical"
    return self.chemistry if exam == "chemistry"
    return self.biological if exam == "biological"
    return self.history if exam == "history"
    return self.geography if exam == "geography"
  end
end

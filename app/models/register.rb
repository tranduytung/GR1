class Register < ActiveRecord::Base
  belongs_to :examinee
  belongs_to :major
  has_one :university, :through => :major
  validates :year, presence: true
  enum status: [:not_register, :registered, :elect, :not_elect]
  enum aspiration: {aspiration_1: 1, aspiration_2: 2, aspiration_3: 3}

  scope :cal_benchmark,->score{joins(:examinee).where("examinees.graduate_score >= ?", score)}

  after_destroy :reset_numbering_order

  private
  def reset_numbering_order
    count = examinee.registers.count + 1
    examinee.registers.order(created_at: :ASC).each do |register|
      register.update_attributes numbering_order: (count -= 1)
      # count = count - 1
    end
  end
end

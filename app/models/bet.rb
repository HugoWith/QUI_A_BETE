class Bet < ApplicationRecord
  belongs_to :group
  belongs_to :creator, class_name: 'User'
  belongs_to :beter, class_name: 'User'
  belongs_to :target, class_name: 'User', optional: true
  belongs_to :winner, class_name: 'User', optional: true
  has_many   :likes, dependent: :destroy
  validates :description, presence: true
  validates :end_date, presence: true
  validates :stake, presence: true
  validates :difficulty, presence: true, inclusion: { in: (1..10) }

  def is_over
    self.over = true
  end

  def self.count_en_cours(bet_array)
    array = bet_array.select { |bet| bet.over == false }
    array.count
  end
end

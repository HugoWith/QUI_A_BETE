class Bet < ApplicationRecord
  belongs_to :group
  belongs_to :creator, class_name: 'User', dependent: :destroy
  belongs_to :beter, class_name: 'User', dependent: :destroy
  belongs_to :target, class_name: 'User', dependent: :destroy, optional: true
  validates :description, presence: true
  validates :end_date, presence: true
  validates :stake, presence: true
  validates :difficulty, presence: true, inclusion: { in: (1...10) }
end

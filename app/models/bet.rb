class Bet < ApplicationRecord
  belongs_to :group_id
  belongs_to :creator_id, class_name: 'user'
  belongs_to :beter_id, class_name: 'user'
  belongs_to :target_id, class_name: 'user'
  validates :description, presence: true
  validates :end_date, presence: true
  validates :stake, presence: true
  validates :difficulty, presence: true, inclusion: { in: [1...10] }
end

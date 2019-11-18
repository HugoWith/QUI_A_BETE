class Bet < ApplicationRecord
  belongs_to :group_id
  belongs_to :creator_id, classname: 'user'
  belongs_to :beter_id, classname: 'user'
  belongs_to :target_id, classname: 'user'
  validates :description, presence: true
  validates :end_date, presence: true
  validates :stake, presence: true
  validates :difficulty, presence: true, inclusion: { in: [1...10] }
end

class Group < ApplicationRecord
  has_many :bets
  has_many :usergroups
  validates :name, presence: true
end

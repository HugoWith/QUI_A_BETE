class Group < ApplicationRecord
  has_many :bets
  has_many :usergroups
  has_many :users, through: :usergroups
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
end

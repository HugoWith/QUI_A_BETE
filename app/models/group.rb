class Group < ApplicationRecord
  IMAGES_SAMPLES_URL = ["frog.png", "Batman.png", "fire.png", "boxing.png", "beer.png", "burger.png",
    "Cat.png", "King.png", "peach.png", "rock.png", "rocket.png", "money.png", "prout.png"]
  has_many :bets
  has_many :usergroups, dependent: :destroy
  has_many :users, through: :usergroups
  has_many :invitations, dependent: :destroy
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
  #     before_validation :test

  # def test
  #   binding.pry
  # end
end

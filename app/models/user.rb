class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :usergroups
  has_many :bets, foreign_key: :creator_id
  has_many :bets, foreign_key: :beter_id
  has_many :bets, foreign_key: :target_id
  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end

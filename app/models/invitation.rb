class Invitation < ApplicationRecord
  belongs_to :group
  has_many :invited_users, dependent: :destroy
  accepts_nested_attributes_for :invited_users
end

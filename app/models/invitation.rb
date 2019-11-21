class Invitation < ApplicationRecord
  belongs_to :group
  has_many :invited_users, dependent: :destroy
end

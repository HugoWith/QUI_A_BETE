class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]
  has_many :usergroups
  has_many :groups, through: :usergroups
  has_many :bets, foreign_key: :creator_id
  has_many :bets, foreign_key: :beter_id
  has_many :bets, foreign_key: :target_id
  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  mount_uploader :photo, PhotoUploader

  def self.find_for_facebook_oauth(auth)
      user_params = auth.slice("provider", "uid")
      user_params.merge! auth.info.slice("email", "first_name", "last_name")
      user_params[:facebook_picture_url] = auth.info.image
      user_params[:token] = auth.credentials.token
      user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
      user_params = user_params.to_h

      user = User.find_by(provider: auth.provider, uid: auth.uid)
      user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
      if user
        user.update(user_params)
      else
        user = User.new(user_params)
        user.password = Devise.friendly_token[0,20]  # Fake password for validation
        user.save
      end

      return user
      # redirect_to root_path
    end




end

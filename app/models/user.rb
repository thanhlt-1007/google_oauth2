class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :recoverable, :rememberable
  devise :database_authenticatable, :registerable, :validatable,
    :omniauthable, omniauth_providers: %i[google_oauth2]

  class << self
    def from_omniauth(auth)
      binding.pry
      # where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      #   user.email = auth.info.email
      #   user.password = Devise.friendly_token[0,20]
      #   user.password_confirmation = Devise.friendly_token[0,20]
      # end
    end
  end
end

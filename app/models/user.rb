class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

    has_many :posts, dependent: :destroy
end


##we took out confirmable - but this is related to sending a confirmation email when a user is created
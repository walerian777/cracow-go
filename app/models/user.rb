class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :paths, dependent: :destroy
  has_many :visited_location, dependent: :destroy
  has_many :locations, through: :visited_location

  def age
    Time.current.year - year_of_birth
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :targets , through: :favorites
  has_many :favorites, dependent: :destroy
  has_many :favorite_targets, through: :favorites, source: :target
  has_many :howtos
  has_many :periods

end

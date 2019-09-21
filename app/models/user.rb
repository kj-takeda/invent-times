class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :howtos
  has_many :periods
  has_many :favorites , dependent: :destroy
  has_many :targets , through: :favorites

  validates :name, presence: true
end

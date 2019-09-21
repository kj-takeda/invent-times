class Target < ApplicationRecord
  belongs_to :user
  has_many :howtos
  has_many :favorites
  has_many :users , through: :favorites

  validates :genre, :feature, :title, :text, :img, :time, presence: true
  validates :title, length: { maximum: 30 }
  validates :text, length: { maximum: 150 }
  validates :time, length: { maximum: 5 } , numericality: { only_integer: true}
end
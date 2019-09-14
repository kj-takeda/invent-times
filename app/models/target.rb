class Target < ApplicationRecord
  belongs_to :user
  has_many :howtos
  has_many :favorites
  has_many :users , through: :favorites
end

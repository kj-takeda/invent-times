class Target < ApplicationRecord
  has_many :howtos
  has_many :favorites
  has_many :users,through: :favorits
end

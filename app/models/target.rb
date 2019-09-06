class Target < ApplicationRecord
  has_many :howtos
  belongs_to :user
end

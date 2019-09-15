class Period < ApplicationRecord
  belongs_to :user

  validates :time, presence: true
  validates :time, length: { maximum: 5 }  # 「5文字以下」
  validates :time, numericality: { only_integer: true}
end

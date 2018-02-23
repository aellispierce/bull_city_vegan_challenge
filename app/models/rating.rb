class Rating < ApplicationRecord
  belongs_to :dish
  validates :score, inclusion: { in: 1..5 }
end

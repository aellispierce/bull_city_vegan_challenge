class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :url, url: true
end

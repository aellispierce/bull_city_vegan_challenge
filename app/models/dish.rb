class Dish < ApplicationRecord
  belongs_to :restaurant

  scope :entree, -> { where(course: "Entree") }
  scope :appetizer, -> { where(course: "Appetizer") }
  scope :dessert, -> { where(course: "Dessert") }

  COURSES = [
    'Entree',
    'Appetizer',
    'Dessert'
  ]

  validates :name, presence: true
  validates :course, inclusion: { :in => COURSES }
end

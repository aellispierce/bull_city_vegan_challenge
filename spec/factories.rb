FactoryBot.define do
  factory :dish do
    restaurant
    sequence(:name) { |n| "Something with Jackfruit" }
    description "This is a crazy good dish. It has jackfruit! Wow!"
    course "Entree"

    trait :appetizer do
      course "Appetizer"
    end

    trait :dessert do
      course "Dessert"
    end
  end

  factory :restaurant do
    sequence(:name) { |n| "Bull City Bites #{n}" }
    description "We sell delicious food in the Bull City"
    address "201 Main St. Durham, NC 27701"
    url "http://www.example.org"
  end
end

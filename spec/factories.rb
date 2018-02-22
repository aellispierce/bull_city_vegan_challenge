FactoryBot.define do
 factory :restaurant do
    sequence(:name) { |n| "Bull City Bites #{n}" }
    description "We sell delicious food in the Bull City"
    address "201 Main St. Durham, NC 27701"
    url "http://www.example.org"
  end
end

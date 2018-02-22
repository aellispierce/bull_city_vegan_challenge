require 'rails_helper'

RSpec.describe Dish, type: :model do
  it "has a valid factory" do
    expect(create(:dish)).to be_valid
  end

  describe "validations" do
    subject { build(:dish) }
    it { is_expected.to validate_presence_of(:name) }

    it "validates that the dish has a valid course" do
      is_expected.to validate_inclusion_of(:course).
                 in_array(%w(Entree Appetizer Dessert))
      is_expected.not_to allow_value("elevensies").for(:course)
    end
  end
end

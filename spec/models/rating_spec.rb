require 'rails_helper'

RSpec.describe Rating, type: :model do
  it "has a valid factory" do
    expect(create(:rating)).to be_valid
  end

  describe "validations" do
    subject { build(:rating) }
    it "validates that the score is between 1 and 5" do
      is_expected.not_to allow_value(10).for(:score)
      is_expected.to allow_value(5).for(:score)
    end
  end
end

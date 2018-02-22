require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "has a valid factory" do
    expect(create(:restaurant)).to be_valid
  end

  describe "validations" do
    subject { build(:restaurant) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:address) }

    it "validates that url is a url" do
      is_expected.to validate_presence_of(:url).
        with_message("is not a valid URL")
      is_expected.not_to allow_value("invalid").for(:url).
        with_message("is not a valid URL")
      is_expected.to allow_value("http://www.google.com").for(:url)
    end
  end
end

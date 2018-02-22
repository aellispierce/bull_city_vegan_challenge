require "rails_helper"

RSpec.describe "Restaurants" do
  let(:json) { JSON.parse(response.body) }

  context "when the request is successful" do
    it "lists restaurants" do
      restaurant = create(:restaurant)

      get "/api/v1/restaurants"

      expect(response).to be_a_success
      expect(json).to be_a(Array)
      expect(json.first["id"]).to eq(restaurant.id)
    end

    it "can view individual restaurants" do
      restaurant = create(:restaurant)

      get "/api/v1/restaurants/#{restaurant.id}"

      expect(response).to be_a_success
      expect(json["id"]).to eq(restaurant.id)
    end
  end
end

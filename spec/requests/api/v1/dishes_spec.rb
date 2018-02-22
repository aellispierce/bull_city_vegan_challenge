require "rails_helper"

RSpec.describe "Dishes" do
  let(:json) { JSON.parse(response.body) }

  context "when the request is successful" do
    it "lists dishes" do
      dish = create(:dish)

      get "/api/v1/dishes"

      expect(response).to be_a_success
      expect(json).to be_a(Array)
      expect(json.first["id"]).to eq(dish.id)
    end

    it "can view individual dishes" do
      dish = create(:dish)

      get "/api/v1/dishes/#{dish.id}"

      expect(response).to be_a_success
      expect(json["id"]).to eq(dish.id)
    end

    it "can view entrees" do
      dish = create(:dish)
      _dish_2 = create(:dish)
      _not_entree = create(:dish, :appetizer)

      get "/api/v1/dishes/entrees"

      expect(response).to be_a_success
      expect(json.size).to eq(2)
      expect(json.first["id"]).to eq(dish.id)
    end

    it "can view appetizers" do
      dish = create(:dish, :appetizer)
      _dish_2 = create(:dish, :appetizer)
      _not_appetizer = create(:dish)

      get "/api/v1/dishes/appetizers"

      expect(response).to be_a_success
      expect(json.size).to eq(2)
      expect(json.first["id"]).to eq(dish.id)
    end

    it "can view desserts" do
      dish = create(:dish, :dessert)
      _dish_2 = create(:dish, :dessert)
      _not_dessert = create(:dish)

      get "/api/v1/dishes/desserts"

      expect(response).to be_a_success
      expect(json.size).to eq(2)
      expect(json.first["id"]).to eq(dish.id)
    end
  end
end

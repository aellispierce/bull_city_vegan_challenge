module Api
  module V1
    class DishesController < ApplicationController
      def index
        dishes = Dish.all

        render json: dishes, status: 200
      end

      def show
        dish = Dish.find(params[:id])

        render json: dish, status: 200
      end

      def entrees
        dishes = Dish.entree

        render json: dishes, status: 200
      end

      def appetizers
        dishes = Dish.appetizer

        render json: dishes, status: 200
      end

      def desserts
        dishes = Dish.dessert

        render json: dishes, status: 200
      end

      def rate
        dish = Dish.find(params[:id])
        dish_rating = rating_params.merge(dish: dish)
        rating = Rating.create(dish_rating)

        render json: rating
      end

      private

      def rating_params
        params.require(:rating).permit(:score, :review)
      end
    end
  end
end

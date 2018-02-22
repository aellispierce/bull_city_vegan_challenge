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
    end
  end
end

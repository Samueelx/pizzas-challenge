class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end

    def show
        begin
            restaurant = Restaurant.find(params[:id])
            render json: restaurant, status: :ok
        rescue ActiveRecord::RecordNotFound
            render json: {error: "Restaurant not found"}, status: :not_found           
        end
    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        head :no_content
    rescue ActiveRecord::RecordNotFound
        render json: {error: "Restaurant not found"}, status: :not_found
    end
end

class RestaurantPizzasController < ApplicationController
    def create
        pizza = Pizza.find_by(id: params[:pizza_id])
        if pizza
            restaurant_pizza = pizza.restaurant_pizzas.create!(rest_pizzas_params)
            return render json: pizza, status: :created
        else
            return render json: {error: "There is no pizza by that ID"}
        end

    rescue ActiveRecord::RecordInvalid => invalid
        return render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    private
    def rest_pizzas_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end

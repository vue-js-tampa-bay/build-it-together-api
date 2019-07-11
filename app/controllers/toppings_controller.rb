class ToppingsController < ApplicationController
  def index
    @toppings = Topping.all
  end

  def destroy
    topping = Topping.find(params[:id])
    topping.destroy
  end
end
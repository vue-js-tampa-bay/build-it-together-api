class TacosController < ApplicationController
  def index
    @tacos = Taco.all
  end

  def show
    @taco = Taco.find(params[:id])
  end

  def create
    taco = Taco.create(taco_params)
    taco.toppings << toppings
    if taco.save
      render json: { id: taco.id, name: taco.name, base: taco.base, toppings: taco.toppings.map(&:name), is_vegetarian: taco.is_vegetarian}, status: :created
    else
      render json: taco.errors, status: :unprocessable_entity
    end
  end

  def update
    taco = Taco.find(params[:id])
    taco.assign_attributes(taco_params)
    taco.toppings << toppings
    if taco.save
      render json: { id: taco.id, name: taco.name, base: taco.base, toppings: taco.toppings, is_vegetarian: taco.is_vegetarian}
    else
      render json: taco.errors, status: :unprocessable_entity
    end
  end

  def destroy
    taco = Taco.find(params[:id])
    taco.destroy
  end

  private

  def taco_params
    params.permit(:name, :base, :is_vegetarian)
  end

  def toppings
    params[:toppings].split(',').map { |name| Topping.find_or_create_by(name: name.downcase) }
  end
end
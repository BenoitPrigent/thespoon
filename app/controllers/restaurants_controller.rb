class RestaurantsController < ApplicationController

  # Read All

  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy]

  def index
    @restaurants =  Restaurant.all
  end

  def show
  end

  # Create

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end


  # Update

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    restaurant_params = params[:restaurants]
    redirect_to restaurants_path
  end

  # Delete

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end

end

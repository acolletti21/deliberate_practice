class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
  end

  def create
    @restaurant = Restaurant.new(
                                name: params[:name],
                                location: params[:location],
                                cuisine: params[:cuisine]
                                  )
    @restaurant.save
    redirect_to "/restaurants/#{@restaurant.id}"
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.assign_attributes(
                                  name: params[:name],
                                  location: params[:location],
                                  cuisine: params[:cuisine]
                                  )
    @restaurant.save
    redirect_to "/restaurants/#{@restaurant.id}"
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to "/restaurants"
  end
end

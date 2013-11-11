class RestaurantsController < ApplicationController

  def new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    # Validation to be added http://guides.rubyonrails.org/getting_started.html

    @restaurant.save
    redirect_to @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id]) 
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(params[:restaurant].permit(:name, :description, :address, :phone ))
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def index
    @restaurant = Restaurant.all
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :phone)
  end

end

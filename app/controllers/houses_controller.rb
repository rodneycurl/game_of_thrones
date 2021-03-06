class HousesController < ApplicationController

  #before_action :authenticate_user!, only: [:add_favorite, :remove_favorite]
  # index
  def index
    @houses = House.all
  end

  #show
  def show
    @house = House.find(params[:id])
  end

  # new
  def new
    @house = House.new
  end

  # create
  def create
    @house = House.create(house_params)
    redirect_to "/houses/#{@house.id}"
  end


  # edit
  def edit
    @house = House.find(params[:id])
  end

  # update
  def update
    @house = House.find(params[:id])
    @house.update(house_params)

    redirect_to "/houses/#{@house.id}"
  end

  # destroy
  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to "/houses"
  end

  def add_favorite
    @house = House.find(params[:id])
    @house.favorites.create(user: current_user)
    redirect :back
  end

  def remove_favorite
    Favorite.where(user: current_user).destroy_all
    redirect :back
  end

  private
  def house_params
    params.require(:house).permit(:name, :house_url)
  end
end

class CharactersController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # index
  def index
    @characters = Character.all
  end

  # new
  def new
    @house = House.find(params[:house_id])
    @character = @house.characters.new
  end

  # create
  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to house_character_path(@house, @character)
  end

  #show
  def show
    @character = Character.find(params[:id])
    @house = House.find(@character.house_id)
  end

  # edit
  def edit
    @character = Character.find(params[:id])
    @house = House.find(@character.house_id)
  end

  # update
  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    @house = House.find(@character.house_id)
    redirect_to house_character_path(@house, @character)
  end

  # destroy
  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    @house = House.find(@character.house_id)

    redirect_to house_path(@house)
  end

  private
  def character_params
    params.require(:character).permit(:name, :character_photo, :house)
  end
end

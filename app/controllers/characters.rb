class CharactersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # index
  def index
    @character = Character.all
  end

  # new
  def new
    @character = Character.new
  end

  # create
  def create
    @character = Character.create!(artist_params)
    redirect_to "/artists/#{@artist.id}"
  end

  #show
  def show
    @character = Character.find(params[:id])
  end

  # edit
  def edit
    @character = Character.find(params[:id])
  end

  # update
  def update
    @character = Character.find(params[:id])
    @character.update(character_params)

    redirect_to "/characters/#{@character.id}"
  end

  # destroy
  def destroy
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to "/characters"
  end

  private
  def character_params
    params.require(:character).permit(:name, :photo_url, :house)
  end
end

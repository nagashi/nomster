class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @places = Place.order(:name).all
  end
 
  def new
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def show
    @place = Place.find(params[:id])
  end
    
end



private

def place_params
  params.required(:place).permit(:name, :description, :address)
end

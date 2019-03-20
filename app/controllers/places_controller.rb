class PlacesController < ApplicationController
  def index
    @places = Place.order(:name).all
  end
 
  def new
    @place = Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end
    
end



private

def place_params
  params.required(:place).permit(:name, :description, :address)
end

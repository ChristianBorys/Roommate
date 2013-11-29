class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def new

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def property_params
    params.require(:property).permit(:rent, :size, :address, :latitude, :longitude)
  end
end

class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def new
    @propterty = Property.new
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to :index, notice: "Succesfully added #{@property.name} to the list of available properties."
    else
      flash.now[:alert] = "Something went wrong, please try again"
      render :new
    end
  end

  def update

  end

  def destroy

  end

  private

  def property_params
    params.require(:property).permit(:rent, :bedrooms, :bathrooms, :name, :address, :latitude, :longitude)
  end
end

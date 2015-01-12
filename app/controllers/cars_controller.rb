class CarsController < ApplicationController
  
  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new	
  end

  def create 
  	@car = Car.new(params.permit(:model, :year, :brand, :km, :value, :motor))
  	if @car.save 
  		redirect_to @car
  	else 
  		render "new"
  	end
  end
end

class CarController < ApplicationController
  def details
  	@car = Car.find(params[:id])
  end

  def cars
  		@car=Car.new	
  end

  def create 
  	@car=Car.new(params.permit(:model, :year, :brand, :km, :value, :motor))
  	if 	@car.save 
  		redirect_to action: "details", id: @car.id
  	else 
  		render "cars"
  	end
  end
end

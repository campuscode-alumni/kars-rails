class CarController < ApplicationController
  def details
  	@car = Car.find(params[:id])
  end

  def cars
  end

  def create 
  	@car=Car.new(params.permit(:model, :year, :brand, :km, :value, :motor))
  	@car.save 
  	redirect_to action: "details", id: @car.id
  end
end

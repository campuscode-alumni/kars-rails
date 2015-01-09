class CarController < ApplicationController
  def details
  	@car = Car.find(params[:id])
  end

  def cars
  end

  def create 
  	puts 'Entrei no create'
  end
end

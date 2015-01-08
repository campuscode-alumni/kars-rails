class CarController < ApplicationController
  def details
  	@car = Car.find(params[:id])
  end

end

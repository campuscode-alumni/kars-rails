class CarsController < ApplicationController
  
  def show
    @car = Car.find_by_id(params[:id])
    redirect_to root_path unless @car
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

  def edit
  end

  def index
    @cars = Car.all
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path 
  end
end

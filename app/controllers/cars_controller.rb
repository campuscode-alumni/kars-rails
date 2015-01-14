class CarsController < ApplicationController
  
  def show
    @car = Car.find_by_id(params[:id])
    redirect_to root_path unless @car
  end

  def new
    @car = Car.new
  end


  def create
  	@car = Car.new(car_params)
  	if @car.save 
  		redirect_to @car
  	else 
  		render "new"
  	end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def index
    @cars = Car.all
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path 
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to @car 
  end

  def car_params
    params.require(:car).permit(:model, :year, :brand, :km, :value, :motor, :technical_details)
  end
end
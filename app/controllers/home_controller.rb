class HomeController < ApplicationController
  def index
  	@cars = Car.limit(6)
  end
end

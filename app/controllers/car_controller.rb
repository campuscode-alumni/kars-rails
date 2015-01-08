class CarController < ApplicationController
  def details
  	@modelo = "Modelo"
  	@marca = "Marca"
  	@valor = "Preço"
  	@ano = "Ano"
  	@km = "KM"
  	@motor = "Motor"
  end
end

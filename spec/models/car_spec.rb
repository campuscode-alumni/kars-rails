require 'rails_helper'

describe Car, :type => :model do
  describe "#usados" do
    it "returns only second hand cars" do
      Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "1", "motor" => "2.0"})
      Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "55430", "motor" => "2.0"})
      Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "0", "motor" => "2.0"})

      expect(Car.usados.length).to eq(2)
    end
  end
  describe "#novos" do
    it "returns only new cars" do
      Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "1", "motor" => "2.0"})
      Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "55430", "motor" => "2.0"})
      Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "0", "motor" => "2.0"})

      expect(Car.novos.length).to eq(1)
    end
  end
  describe "#luxos" do
    it "returns only luxury cars" do
      Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "1", "motor" => "2.0"})
      Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "55430", "motor" => "2.0"})
      Car.create({:brand => "VW", "value" => "200000", "model" => "Gol", "year" => "2014", "km" => "0", "motor" => "2.0"})

      expect(Car.luxos.length).to eq(1)
    end
  end
  describe "validates" do
    describe "blank fields" do
      it "all fields are mandatory" do
        car = Car.create
        expect(car.errors.messages.length).to eq(5)
      end
      it "km is blank" do 
        car = Car.create({:brand => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "motor" => "2.0"})
        expect(car.errors.messages[:km][0]).to eq(": Favor preencher o campo.")
      end
      it "year is blank"
      it "model is blank"
      it "brand is blank"
      it "value is blank"
    end
  end
end
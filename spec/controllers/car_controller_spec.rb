require 'rails_helper'

describe CarsController, :type => :controller do
  describe "POST create" do
    let(:params) { {"brand" => "VW", "value" => "20000", "model" => "Gol", "year" => "2014", "km" => "0", "motor" => "2.0"} }
    let(:car)    { Car.new(params) }

    before do
      allow(Car).to receive(:new).and_return(car)
    end

    it "create a new car" do
      expect(Car).to receive(:new).with(params).and_return(car)
      post :create, :car => params
    end

    it "save a new car" do
      expect(car).to receive(:save)
      post :create, :car => params
    end

    it "redirect to show car" do
      post :create, :car => params
      expect(response).to redirect_to :action => :show,
                                      :id     => car.id
    end

    it "when fails on save render new" do
      allow(car).to receive(:save).and_return(false)
      post :create, :car => params
      expect(response).to render_template(:new)
    end
  end
end

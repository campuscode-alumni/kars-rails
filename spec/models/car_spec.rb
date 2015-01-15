require 'rails_helper'

describe Car, :type => :model do
  describe "#usados" do
    it "returns only second hand cars"
  end
  describe "#novos" do
    it "returns only new cars"
  end
  describe "#luxos" do
    it "returns only luxury cars"
  end
end

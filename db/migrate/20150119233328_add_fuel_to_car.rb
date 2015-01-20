class AddFuelToCar < ActiveRecord::Migration
  def change
    add_column :cars, :fuel, :string
  end
end

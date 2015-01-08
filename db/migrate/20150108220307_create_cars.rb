class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.integer :year
      t.integer :km
      t.string :motor
      t.float :value

      t.timestamps
    end
  end
end

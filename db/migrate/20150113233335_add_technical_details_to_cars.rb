class AddTechnicalDetailsToCars < ActiveRecord::Migration
  def change
    add_column :cars, :technical_details, :text
  end
end

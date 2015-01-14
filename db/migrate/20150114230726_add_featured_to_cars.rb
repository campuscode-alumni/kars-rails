class AddFeaturedToCars < ActiveRecord::Migration
  def change
    add_column :cars, :featured, :boolean , :default => false
  end
end

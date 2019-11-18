class AddPriceToGrills < ActiveRecord::Migration[5.2]
  def change
    add_column :grills, :price, :integer
  end
end

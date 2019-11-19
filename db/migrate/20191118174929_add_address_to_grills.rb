class AddAddressToGrills < ActiveRecord::Migration[5.2]
  def change
    add_column :grills, :address, :string
  end
end

class AddNameToGrills < ActiveRecord::Migration[5.2]
  def change
    add_column :grills, :name, :string
  end
end

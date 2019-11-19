class AddDescriptionToGrills < ActiveRecord::Migration[5.2]
  def change
    add_column :grills, :description, :string
  end
end

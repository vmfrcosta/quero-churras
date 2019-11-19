class AddTypeToGrills < ActiveRecord::Migration[5.2]
  def change
    add_column :grills, :grills_type, :string
  end
end

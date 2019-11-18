class AddStatusToGrills < ActiveRecord::Migration[5.2]
  def change
    add_column :grills, :status, :boolean
  end
end

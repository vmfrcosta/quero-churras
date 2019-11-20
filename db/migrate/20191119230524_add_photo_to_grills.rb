class AddPhotoToGrills < ActiveRecord::Migration[5.2]
  def change
    add_column :grills, :photo, :string
  end
end

class AddColumnsToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :url, :string
    add_reference :photos, :grill, index: true
  end
end

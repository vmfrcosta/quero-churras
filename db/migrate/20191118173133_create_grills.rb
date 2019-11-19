class CreateGrills < ActiveRecord::Migration[5.2]
  def change
    create_table :grills do |t|

      t.timestamps
    end
  end
end

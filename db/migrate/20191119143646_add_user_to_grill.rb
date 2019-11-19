class AddUserToGrill < ActiveRecord::Migration[5.2]
  def change
    add_reference :grills, :user, foreign_key: true
  end
end

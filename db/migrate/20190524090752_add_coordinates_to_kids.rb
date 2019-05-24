class AddCoordinatesToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :latitude, :float
    add_column :kids, :longitude, :float
  end
end

class AddPhotoToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :photo, :string
  end
end

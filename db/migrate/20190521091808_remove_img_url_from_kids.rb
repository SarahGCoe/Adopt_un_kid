class RemoveImgUrlFromKids < ActiveRecord::Migration[5.2]
  def change
    remove_column :kids, :img_url, :string
  end
end

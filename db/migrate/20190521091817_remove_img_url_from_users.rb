class RemoveImgUrlFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :img_url, :string
  end
end

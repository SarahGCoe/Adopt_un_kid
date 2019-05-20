class CreateKids < ActiveRecord::Migration[5.2]
  def change
    create_table :kids do |t|
      t.text :description
      t.string :name
      t.string :age_category
      t.string :img_url
      t.string :personality
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

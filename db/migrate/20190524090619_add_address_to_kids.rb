class AddAddressToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :address, :string
  end
end

class AddStreetZipToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :street, :string
    add_column :addresses, :zip, :string
  end
end

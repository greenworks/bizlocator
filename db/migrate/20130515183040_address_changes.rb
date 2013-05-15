class AddressChanges < ActiveRecord::Migration
  def up
    add_column :companies, :address_id, :integer
    add_column :shopping_malls, :address_id, :integer
    remove_columns :addresses, :shopping_mall_id, :company_id
  end

  def down
  end
end

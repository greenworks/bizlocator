class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :contact_name
      t.string :email
      t.string :phone
      t.string :fax
      t.string :address_line_one
      t.string :address_line_two
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :website
      t.string :google_map_code
      t.string :chat_code
      t.integer :company_id
      t.integer :shopping_mall_id
      t.boolean :ispublished

      t.timestamps
    end
  end
end

class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :owner_name
      t.integer :user_id
      t.string :info
      t.text :description
      t.string :phone
      t.string :fax
      t.string :email
      t.boolean :ispublished
      t.boolean :isapproved

      t.timestamps
    end
  end
end

class CreateShoppingMalls < ActiveRecord::Migration
  def change
    create_table :shopping_malls do |t|
      t.string :name
      t.text :description
      t.integer :mall_type_id
      t.boolean :ispublished

      t.timestamps
    end
  end
end

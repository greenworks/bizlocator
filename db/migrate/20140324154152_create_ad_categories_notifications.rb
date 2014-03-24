class CreateAdCategoriesNotifications < ActiveRecord::Migration
  def change
    create_table :ad_categories_notifications do |t|
      t.integer :user_id
      t.integer :ad_category_id
      t.string :name

      t.timestamps
    end
  end
end

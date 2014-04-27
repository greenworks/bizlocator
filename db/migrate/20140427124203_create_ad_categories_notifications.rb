class CreateAdCategoriesNotifications < ActiveRecord::Migration
  def change
    create_table :ad_categories_notifications do |t|
      t.integer :ad_category_id
      t.integer :user_id

      t.timestamps
    end
  end
end

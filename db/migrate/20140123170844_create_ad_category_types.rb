class CreateAdCategoryTypes < ActiveRecord::Migration
  def change
    create_table :ad_category_types do |t|
      t.string :name

      t.timestamps
    end
  end
end

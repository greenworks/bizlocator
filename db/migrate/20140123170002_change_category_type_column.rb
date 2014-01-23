class ChangeCategoryTypeColumn < ActiveRecord::Migration
  def up
    rename_column :ad_categories, :category_type, :ad_category_type_id
  end

  def down
  end
end

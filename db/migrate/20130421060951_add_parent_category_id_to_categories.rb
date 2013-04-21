class AddParentCategoryIdToCategories < ActiveRecord::Migration
  def change
    add_column :ad_categories, :parent_category_id, :integer
    add_column :business_item_categories, :parent_category_id, :integer
    add_column :city_service_categories, :parent_category_id, :integer
    add_column :job_categories, :parent_category_id, :integer
  end
end



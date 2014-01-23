class AddTypeToAdCategories < ActiveRecord::Migration
  def change
    add_column :ad_categories, :category_type, :integer
  end
end

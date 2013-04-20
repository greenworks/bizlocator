class AddImageToModels < ActiveRecord::Migration
  def change
    add_column :ad_categories, :image, :string
    add_column :jobs, :image, :string
    add_column :shopping_malls, :image, :string
    add_column :business_items, :image, :string
    add_column :emergency_numbers, :image, :string
    add_column :city_services, :image, :string
  end
end

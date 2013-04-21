class BusinessItemCategory < ActiveRecord::Base
  has_many :business_items

  attr_accessible :description, :introtext, :ispublished, :name, :parent_category_id


  def get_child_categories
    BusinessItemCategory.where("parent_category_id = ?", "#{id}").limit(3)
  end

end

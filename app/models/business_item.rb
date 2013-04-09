class BusinessItem < ActiveRecord::Base
  belongs_to :business_item_category
  belongs_to :company
  belongs_to :shopping_mall
  belongs_to :address

  attr_accessible :address_id, :business_item_category_id, :company_id, :expiry_date, :isapproved, :ispublished, :shopping_mall_id, :title
end

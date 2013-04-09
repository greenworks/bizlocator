class Ad < ActiveRecord::Base
  belongs_to :ad_category
  belongs_to :company
  belongs_to :shopping_mall
  belongs_to :address
  belongs_to :ad_position

  attr_accessible :ad_category_id, :ad_position_id, :address_id, :company_id, :description, :expiry_date, :isapproved, :ispublished, :price, :shopping_mall_id, :title
end

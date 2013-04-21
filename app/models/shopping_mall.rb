class ShoppingMall < ActiveRecord::Base
  has_many :ads
  has_many :business_items
  belongs_to :mall_type
  has_one :address

  attr_accessible :description, :ispublished, :mall_type_id, :name, :image

  mount_uploader :image, ImageUploader

end

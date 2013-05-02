class BusinessItem < ActiveRecord::Base
  belongs_to :business_item_category
  belongs_to :company
  belongs_to :shopping_mall
  belongs_to :address
  belongs_to :user

  attr_accessible :address_id, :business_item_category_id, :company_id, :expiry_date, :isapproved, :ispublished, :shopping_mall_id, :title, :image

  mount_uploader :image, ImageUploader

  def self.search(keyword)
    if keyword
      where(' title LIKE ?  ', "%#{keyword}%")
    else
      scoped
    end
  end

end

class Ad < ActiveRecord::Base
  belongs_to :ad_category
  belongs_to :company
  belongs_to :shopping_mall
  belongs_to :address
  belongs_to :ad_position
  belongs_to :user

  attr_accessible :ad_category_id, :ad_position_id, :address_id, :company_id, :description, \
  :expiry_date, :isapproved, :ispublished, :price, :shopping_mall_id, :title, :user_id, :image

  mount_uploader :image, ImageUploader

  def self.search_by_category_id(category_id)
    if  category_id
      where(' ad_category_id =?', category_id)
    else
      scoped
    end
  end

  def self.minprice(price)
    if price
      where(' price <= ?', "%#{price}%")
    else
      scoped
    end
  end

  def self.maxprice(price)
    if price
      where(' price >= ?', "%#{price}%")
    else
      scoped
    end
  end

  def self.search(keyword)
    if keyword
      where(' title LIKE ?  OR description LIKE ? ', "%#{keyword}%", "%#{keyword}%")
    else
      scoped
    end

  end
end

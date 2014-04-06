class AdCategory < ActiveRecord::Base

  has_many :ads
  belongs_to :ad_category_type
  has_many :ad_category_notifications

  attr_accessible :description, :introtext, :ispublished, :name , :image, :parent_category_id, :ad_category_type_id

  mount_uploader :image, ImageUploader

  def initial
    return '?' if name.blank?
    # name.[0].upcase (updated to get the first character )
    name.slice(0).chr.upcase
  end

  def get_child_categories
    AdCategory.where("parent_category_id = ?", "#{id}").limit(3)
  end

  def get_all_child_categories
    AdCategory.where("parent_category_id = ?", "#{id}")
  end

  def self.get_all_main_categories
    AdCategory.where("ad_category_type_id= 0")
  end

end

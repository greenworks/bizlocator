class AdCategory < ActiveRecord::Base

  has_many :ads

  attr_accessible :description, :introtext, :ispublished, :name , :image

  mount_uploader :image, ImageUploader

  def initial
    return '?' if name.blank?
    # name.[0].upcase (updated to get the first character )
    name.slice(0).chr.upcase
  end

end

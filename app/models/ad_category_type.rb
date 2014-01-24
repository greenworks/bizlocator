class AdCategoryType < ActiveRecord::Base

  has_many :ad_categories

  attr_accessible :name
end

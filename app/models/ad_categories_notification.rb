class AdCategoriesNotification < ActiveRecord::Base
  attr_accessible :ad_category_id, :name, :user_id

  has_many :users
  has_many :ad_categories
end

class AdCategoriesNotification < ActiveRecord::Base
  attr_accessible :ad_category_id, :name, :user_id

  has_and_belongs_to_many :users
  has_and_belongs_to_many :ad_categories

end

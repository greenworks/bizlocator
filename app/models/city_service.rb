class CityService < ActiveRecord::Base
  belongs_to :city_service_category

  attr_accessible :city_service_category_id, :description, :ispublished, :title
end

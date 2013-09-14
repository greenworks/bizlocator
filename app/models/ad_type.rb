class AdType < ActiveRecord::Base
  attr_accessible :name
  has_many :ads
end

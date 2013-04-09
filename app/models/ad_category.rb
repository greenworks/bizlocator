class AdCategory < ActiveRecord::Base
  has_many :ads

  attr_accessible :description, :introtext, :ispublished, :name
end

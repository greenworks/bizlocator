class BusinessItemCategory < ActiveRecord::Base
  has_many :business_items

  attr_accessible :description, :introtext, :ispublished, :name
end

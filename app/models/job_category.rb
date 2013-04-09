class JobCategory < ActiveRecord::Base
  has_many :jobs

  attr_accessible :description, :introtext, :ispublished, :name
end

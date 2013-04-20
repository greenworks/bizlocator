class Company < ActiveRecord::Base
  belongs_to :user
  has_many :ads
  has_many :addresses
  has_many :business_items

  attr_accessible :description, :email, :fax, :info, :isapproved, :ispublished, :name, :owner_name, :phone, :user_id , :image

  mount_uploader :image, ImageUploader
end

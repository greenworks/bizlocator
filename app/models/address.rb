class Address < ActiveRecord::Base
  has_many :ads
  belongs_to :company
  belongs_to :shopping_mall
  has_many :business_items
  has_many :shopping_mall

  attr_accessible :address_line_one, :address_line_two, :chat_code, :city, :company_id, :contact_name, :country, :email, :fax, :google_map_code, :ispublished, :phone, :postal_code, :shopping_mall_id, :website
end

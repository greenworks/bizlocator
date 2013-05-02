class Job < ActiveRecord::Base
  belongs_to :company
  belongs_to :user
  belongs_to :job_category

  attr_accessible :company_id, :description, :expiry_date, :isapproved, :ispublished, :job_categiory_id, :meeting_address, :qualification, :title, :vacancy_count, :image

  mount_uploader :image, ImageUploader

end

class AdCategoriesNotification < ActiveRecord::Base
  attr_accessible :ad_category_id, :user_id

  belongs_to :ad_categories
  belongs_to :users

  attr_accessor :ad_category_list

  after_save :update_ad_category_list

  def get_all_ad_categories
    #@ad_categories = AdCategory.find(:all, :order => ' ad_category_type_id, parent_category_id')
    @ad_categories = AdCategory.all

  end

  private

  def  update_ad_category_list

    ad_categories.delete_all
    selected_ad_categories = ad_category_list.nil? ? [] : ad_category_list.keys.collect{|id| AdCategory.find_by_id(id)}
    selected_ad_categories.each {|ad_category| self.ad_categories << ad_category}
  end



end

class AdCategoriesNotificationsController < InheritedResources::Base

  def get_all_ad_categories
    #@ad_categories = AdCategory.find(:all, :order => ' ad_category_type_id, parent_category_id')
    @ad_categories = AdCategory.all

  end

  def index
    sleep 1
    @ad_categories_notifications = AdCategoriesNotification.all
    @unnotified_ad_categories = AdCategoriesNotification.where("user_id = 1")
    @notified_ad_categories = AdCategoriesNotification.where("user_id <> 1")
  end

  def new
    get_all_ad_categories
    @ad_categories_notification = AdCategoriesNotification.new
  end

  def create
    get_all_ad_categories
    @ad_categories_notification = AdCategoriesNotification.create!(params[:ad_categories_notification])
    respond_to do |format|
      format.html { redirect_to ad_categories_notifications_url }
      format.js
    end
  end

  def update
    get_all_ad_categories
    @ad_categories_notification = AdCategoriesNotification.find(params[:id])
    @ad_categories_notification.update_attributes!(params[:task])
    respond_to do |format|
      format.html { redirect_to ad_categories_notifications_url }
      format.js
    end
  end

  def destroy
    @ad_categories_notification = AdCategoriesNotification.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to ad_categories_notifications_url }
      format.js
    end
  end
  
end

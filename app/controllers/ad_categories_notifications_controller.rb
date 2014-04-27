class AdCategoriesNotificationsController < InheritedResources::Base
  def index
    sleep 1
    @ad_categories_notifications = AdCategoriesNotification.all
    @unnotified_ad_categories = AdCategoriesNotification.where("user_id = 1")
    @notified_ad_categories = AdCategoriesNotification.where("user_id <> 1")
  end

  def new
    @ad_categories_notification = AdCategoriesNotification.new
  end

  def create
    @ad_categories_notification = AdCategoriesNotification.create!(params[:ad_categories_notification])
    respond_to do |format|
      format.html { redirect_to ad_categories_notifications_url }
      format.js
    end
  end

  def update
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

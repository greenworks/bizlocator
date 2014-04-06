class AdCategoriesNotificationsController < ApplicationController # < InheritedResources::Base
  def new
    @ad_category_notification = AdCategoriesNotification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ad_category }
    end
  end


  # POST /ad_categories
  # POST /ad_categories.json
  def create
    @ad_category_notification = AdCategoriesNotification.new(params[:ad_category_notification])

    respond_to do |format|
      if @ad_category.save
        format.html { redirect_to @ad_category, notice: 'Ad category was successfully created.' }
        format.json { render json: @ad_category, status: :created, location: @ad_category }
      else
        format.html { render action: "new" }
        format.json { render json: @ad_category.errors, status: :unprocessable_entity }
      end
    end
  end

end

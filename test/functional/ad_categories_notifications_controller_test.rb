require 'test_helper'

class AdCategoriesNotificationsControllerTest < ActionController::TestCase
  setup do
    @ad_categories_notification = ad_categories_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_categories_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_categories_notification" do
    assert_difference('AdCategoriesNotification.count') do
      post :create, ad_categories_notification: { ad_category_id: @ad_categories_notification.ad_category_id, name: @ad_categories_notification.name, user_id: @ad_categories_notification.user_id }
    end

    assert_redirected_to ad_categories_notification_path(assigns(:ad_categories_notification))
  end

  test "should show ad_categories_notification" do
    get :show, id: @ad_categories_notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad_categories_notification
    assert_response :success
  end

  test "should update ad_categories_notification" do
    put :update, id: @ad_categories_notification, ad_categories_notification: { ad_category_id: @ad_categories_notification.ad_category_id, name: @ad_categories_notification.name, user_id: @ad_categories_notification.user_id }
    assert_redirected_to ad_categories_notification_path(assigns(:ad_categories_notification))
  end

  test "should destroy ad_categories_notification" do
    assert_difference('AdCategoriesNotification.count', -1) do
      delete :destroy, id: @ad_categories_notification
    end

    assert_redirected_to ad_categories_notifications_path
  end
end

require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { address_line_one: @address.address_line_one, address_line_two: @address.address_line_two, chat_code: @address.chat_code, city: @address.city, company_id: @address.company_id, contact_name: @address.contact_name, country: @address.country, email: @address.email, fax: @address.fax, google_map_code: @address.google_map_code, ispublished: @address.ispublished, phone: @address.phone, postal_code: @address.postal_code, shopping_mall_id: @address.shopping_mall_id, website: @address.website }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    put :update, id: @address, address: { address_line_one: @address.address_line_one, address_line_two: @address.address_line_two, chat_code: @address.chat_code, city: @address.city, company_id: @address.company_id, contact_name: @address.contact_name, country: @address.country, email: @address.email, fax: @address.fax, google_map_code: @address.google_map_code, ispublished: @address.ispublished, phone: @address.phone, postal_code: @address.postal_code, shopping_mall_id: @address.shopping_mall_id, website: @address.website }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end

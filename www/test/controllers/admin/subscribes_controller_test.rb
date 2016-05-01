require 'test_helper'

class Admin::SubscribesControllerTest < ActionController::TestCase
  setup do
    @admin_subscribe = admin_subscribes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_subscribes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_subscribe" do
    assert_difference('Admin::Subscribe.count') do
      post :create, admin_subscribe: { email: @admin_subscribe.email }
    end

    assert_redirected_to admin_subscribe_path(assigns(:admin_subscribe))
  end

  test "should show admin_subscribe" do
    get :show, id: @admin_subscribe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_subscribe
    assert_response :success
  end

  test "should update admin_subscribe" do
    patch :update, id: @admin_subscribe, admin_subscribe: { email: @admin_subscribe.email }
    assert_redirected_to admin_subscribe_path(assigns(:admin_subscribe))
  end

  test "should destroy admin_subscribe" do
    assert_difference('Admin::Subscribe.count', -1) do
      delete :destroy, id: @admin_subscribe
    end

    assert_redirected_to admin_subscribes_path
  end
end

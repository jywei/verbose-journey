require 'test_helper'

class Admin::AreasControllerTest < ActionController::TestCase
  setup do
    @admin_area = admin_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_area" do
    assert_difference('Admin::Area.count') do
      post :create, admin_area: { city: @admin_area.city }
    end

    assert_redirected_to admin_area_path(assigns(:admin_area))
  end

  test "should show admin_area" do
    get :show, id: @admin_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_area
    assert_response :success
  end

  test "should update admin_area" do
    patch :update, id: @admin_area, admin_area: { city: @admin_area.city }
    assert_redirected_to admin_area_path(assigns(:admin_area))
  end

  test "should destroy admin_area" do
    assert_difference('Admin::Area.count', -1) do
      delete :destroy, id: @admin_area
    end

    assert_redirected_to admin_areas_path
  end
end

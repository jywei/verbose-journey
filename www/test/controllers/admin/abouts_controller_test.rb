require 'test_helper'

class Admin::AboutsControllerTest < ActionController::TestCase
  setup do
    @admin_about = admin_abouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_abouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_about" do
    assert_difference('Admin::About.count') do
      post :create, admin_about: { content_area_1: @admin_about.content_area_1, content_area_2: @admin_about.content_area_2, title_area_1: @admin_about.title_area_1, title_area_2: @admin_about.title_area_2 }
    end

    assert_redirected_to admin_about_path(assigns(:admin_about))
  end

  test "should show admin_about" do
    get :show, id: @admin_about
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_about
    assert_response :success
  end

  test "should update admin_about" do
    patch :update, id: @admin_about, admin_about: { content_area_1: @admin_about.content_area_1, content_area_2: @admin_about.content_area_2, title_area_1: @admin_about.title_area_1, title_area_2: @admin_about.title_area_2 }
    assert_redirected_to admin_about_path(assigns(:admin_about))
  end

  test "should destroy admin_about" do
    assert_difference('Admin::About.count', -1) do
      delete :destroy, id: @admin_about
    end

    assert_redirected_to admin_abouts_path
  end
end

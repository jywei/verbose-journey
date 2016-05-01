require 'test_helper'

class Admin::OgMainPagesControllerTest < ActionController::TestCase
  setup do
    @admin_og_main_page = admin_og_main_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_og_main_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_og_main_page" do
    assert_difference('Admin::OgMainPage.count') do
      post :create, admin_og_main_page: { about_description: @admin_og_main_page.about_description, about_image: @admin_og_main_page.about_image, about_title: @admin_og_main_page.about_title, brand_description: @admin_og_main_page.brand_description, brand_image: @admin_og_main_page.brand_image, brand_title: @admin_og_main_page.brand_title, contact_description: @admin_og_main_page.contact_description, contact_image: @admin_og_main_page.contact_image, contact_title: @admin_og_main_page.contact_title, home_description: @admin_og_main_page.home_description, home_image: @admin_og_main_page.home_image, home_title: @admin_og_main_page.home_title, news_description: @admin_og_main_page.news_description, news_image: @admin_og_main_page.news_image, news_title: @admin_og_main_page.news_title, store_description: @admin_og_main_page.store_description, store_image: @admin_og_main_page.store_image, store_title: @admin_og_main_page.store_title }
    end

    assert_redirected_to admin_og_main_page_path(assigns(:admin_og_main_page))
  end

  test "should show admin_og_main_page" do
    get :show, id: @admin_og_main_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_og_main_page
    assert_response :success
  end

  test "should update admin_og_main_page" do
    patch :update, id: @admin_og_main_page, admin_og_main_page: { about_description: @admin_og_main_page.about_description, about_image: @admin_og_main_page.about_image, about_title: @admin_og_main_page.about_title, brand_description: @admin_og_main_page.brand_description, brand_image: @admin_og_main_page.brand_image, brand_title: @admin_og_main_page.brand_title, contact_description: @admin_og_main_page.contact_description, contact_image: @admin_og_main_page.contact_image, contact_title: @admin_og_main_page.contact_title, home_description: @admin_og_main_page.home_description, home_image: @admin_og_main_page.home_image, home_title: @admin_og_main_page.home_title, news_description: @admin_og_main_page.news_description, news_image: @admin_og_main_page.news_image, news_title: @admin_og_main_page.news_title, store_description: @admin_og_main_page.store_description, store_image: @admin_og_main_page.store_image, store_title: @admin_og_main_page.store_title }
    assert_redirected_to admin_og_main_page_path(assigns(:admin_og_main_page))
  end

  test "should destroy admin_og_main_page" do
    assert_difference('Admin::OgMainPage.count', -1) do
      delete :destroy, id: @admin_og_main_page
    end

    assert_redirected_to admin_og_main_pages_path
  end
end

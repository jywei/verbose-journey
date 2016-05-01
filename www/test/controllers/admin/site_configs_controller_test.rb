require 'test_helper'

class Admin::SiteConfigsControllerTest < ActionController::TestCase
  setup do
    @admin_site_config = admin_site_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_site_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_site_config" do
    assert_difference('Admin::SiteConfig.count') do
      post :create, admin_site_config: { address: @admin_site_config.address, description: @admin_site_config.description, email: @admin_site_config.email, facebook_url: @admin_site_config.facebook_url, fax: @admin_site_config.fax, name: @admin_site_config.name, phone: @admin_site_config.phone, tax_id: @admin_site_config.tax_id, title: @admin_site_config.title, website_url: @admin_site_config.website_url }
    end

    assert_redirected_to admin_site_config_path(assigns(:admin_site_config))
  end

  test "should show admin_site_config" do
    get :show, id: @admin_site_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_site_config
    assert_response :success
  end

  test "should update admin_site_config" do
    patch :update, id: @admin_site_config, admin_site_config: { address: @admin_site_config.address, description: @admin_site_config.description, email: @admin_site_config.email, facebook_url: @admin_site_config.facebook_url, fax: @admin_site_config.fax, name: @admin_site_config.name, phone: @admin_site_config.phone, tax_id: @admin_site_config.tax_id, title: @admin_site_config.title, website_url: @admin_site_config.website_url }
    assert_redirected_to admin_site_config_path(assigns(:admin_site_config))
  end

  test "should destroy admin_site_config" do
    assert_difference('Admin::SiteConfig.count', -1) do
      delete :destroy, id: @admin_site_config
    end

    assert_redirected_to admin_site_configs_path
  end
end

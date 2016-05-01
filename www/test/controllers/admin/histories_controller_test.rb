require 'test_helper'

class Admin::HistoriesControllerTest < ActionController::TestCase
  setup do
    @admin_history = admin_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_history" do
    assert_difference('Admin::History.count') do
      post :create, admin_history: { content: @admin_history.content }
    end

    assert_redirected_to admin_history_path(assigns(:admin_history))
  end

  test "should show admin_history" do
    get :show, id: @admin_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_history
    assert_response :success
  end

  test "should update admin_history" do
    patch :update, id: @admin_history, admin_history: { content: @admin_history.content }
    assert_redirected_to admin_history_path(assigns(:admin_history))
  end

  test "should destroy admin_history" do
    assert_difference('Admin::History.count', -1) do
      delete :destroy, id: @admin_history
    end

    assert_redirected_to admin_histories_path
  end
end

require 'test_helper'

class Admin::StoriesControllerTest < ActionController::TestCase
  setup do
    @admin_story = admin_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_story" do
    assert_difference('Admin::Story.count') do
      post :create, admin_story: { button_text: @admin_story.button_text, content: @admin_story.content, link_url: @admin_story.link_url, title2: @admin_story.title2, title: @admin_story.title }
    end

    assert_redirected_to admin_story_path(assigns(:admin_story))
  end

  test "should show admin_story" do
    get :show, id: @admin_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_story
    assert_response :success
  end

  test "should update admin_story" do
    patch :update, id: @admin_story, admin_story: { button_text: @admin_story.button_text, content: @admin_story.content, link_url: @admin_story.link_url, title2: @admin_story.title2, title: @admin_story.title }
    assert_redirected_to admin_story_path(assigns(:admin_story))
  end

  test "should destroy admin_story" do
    assert_difference('Admin::Story.count', -1) do
      delete :destroy, id: @admin_story
    end

    assert_redirected_to admin_stories_path
  end
end

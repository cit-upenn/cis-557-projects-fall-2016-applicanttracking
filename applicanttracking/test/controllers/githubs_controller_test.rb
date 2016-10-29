require 'test_helper'

class GithubsControllerTest < ActionController::TestCase
  setup do
    @github = githubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:githubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create github" do
    assert_difference('Github.count') do
      post :create, github: { path: @github.path, user_id: @github.user_id, username: @github.username }
    end

    assert_redirected_to github_path(assigns(:github))
  end

  test "should show github" do
    get :show, id: @github
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @github
    assert_response :success
  end

  test "should update github" do
    patch :update, id: @github, github: { path: @github.path, user_id: @github.user_id, username: @github.username }
    assert_redirected_to github_path(assigns(:github))
  end

  test "should destroy github" do
    assert_difference('Github.count', -1) do
      delete :destroy, id: @github
    end

    assert_redirected_to githubs_path
  end
end

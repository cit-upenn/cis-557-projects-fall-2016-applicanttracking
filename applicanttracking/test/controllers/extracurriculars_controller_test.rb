require 'test_helper'

class ExtracurricularsControllerTest < ActionController::TestCase
  setup do
    @extracurricular = extracurriculars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extracurriculars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extracurricular" do
    assert_difference('Extracurricular.count') do
      post :create, extracurricular: { current: @extracurricular.current, description: @extracurricular.description, end: @extracurricular.end, organization: @extracurricular.organization, position: @extracurricular.position, start: @extracurricular.start, user_id: @extracurricular.user_id }
    end

    assert_redirected_to extracurricular_path(assigns(:extracurricular))
  end

  test "should show extracurricular" do
    get :show, id: @extracurricular
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extracurricular
    assert_response :success
  end

  test "should update extracurricular" do
    patch :update, id: @extracurricular, extracurricular: { current: @extracurricular.current, description: @extracurricular.description, end: @extracurricular.end, organization: @extracurricular.organization, position: @extracurricular.position, start: @extracurricular.start, user_id: @extracurricular.user_id }
    assert_redirected_to extracurricular_path(assigns(:extracurricular))
  end

  test "should destroy extracurricular" do
    assert_difference('Extracurricular.count', -1) do
      delete :destroy, id: @extracurricular
    end

    assert_redirected_to extracurriculars_path
  end
end

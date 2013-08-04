require 'test_helper'

class SideHustlesControllerTest < ActionController::TestCase
  setup do
    @side_hustle = side_hustles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:side_hustles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create side_hustle" do
    assert_difference('SideHustle.count') do
      post :create, side_hustle: { description: @side_hustle.description }
    end

    assert_redirected_to side_hustle_path(assigns(:side_hustle))
  end

  test "should show side_hustle" do
    get :show, id: @side_hustle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @side_hustle
    assert_response :success
  end

  test "should update side_hustle" do
    put :update, id: @side_hustle, side_hustle: { description: @side_hustle.description }
    assert_redirected_to side_hustle_path(assigns(:side_hustle))
  end

  test "should destroy side_hustle" do
    assert_difference('SideHustle.count', -1) do
      delete :destroy, id: @side_hustle
    end

    assert_redirected_to side_hustles_path
  end
end

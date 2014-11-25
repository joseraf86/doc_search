require 'test_helper'

class AreasControllerTest < ActionController::TestCase
  setup do
    @area = area(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:area)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area" do
    assert_difference('Area.count') do
      post :create, area: { descripcion: @area.descripcion }
    end

    assert_redirected_to area_path(assigns(:area))
  end

  test "should show area" do
    get :show, id: @area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @area
    assert_response :success
  end

  test "should update area" do
    put :update, id: @area, area: { descripcion: @area.descripcion }
    assert_redirected_to area_path(assigns(:area))
  end

  test "should destroy area" do
    assert_difference('Area.count', -1) do
      delete :destroy, id: @area
    end

    assert_redirected_to areas_path
  end
end

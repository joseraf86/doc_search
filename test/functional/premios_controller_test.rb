require 'test_helper'

class PremiosControllerTest < ActionController::TestCase
  setup do
    @premio = premio(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:premio)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create premio" do
    assert_difference('Premio.count') do
      post :create, premio: { descripcion: @premio.descripcion }
    end

    assert_redirected_to premio_path(assigns(:premio))
  end

  test "should show premio" do
    get :show, id: @premio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @premio
    assert_response :success
  end

  test "should update premio" do
    put :update, id: @premio, premio: { descripcion: @premio.descripcion }
    assert_redirected_to premio_path(assigns(:premio))
  end

  test "should destroy premio" do
    assert_difference('Premio.count', -1) do
      delete :destroy, id: @premio
    end

    assert_redirected_to premios_path
  end
end

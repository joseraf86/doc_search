require 'test_helper'

class MencionsControllerTest < ActionController::TestCase
  setup do
    @mencion = mencion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mencion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mencion" do
    assert_difference('Mencion.count') do
      post :create, mencion: { descripcion: @mencion.descripcion }
    end

    assert_redirected_to mencion_path(assigns(:mencion))
  end

  test "should show mencion" do
    get :show, id: @mencion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mencion
    assert_response :success
  end

  test "should update mencion" do
    put :update, id: @mencion, mencion: { descripcion: @mencion.descripcion }
    assert_redirected_to mencion_path(assigns(:mencion))
  end

  test "should destroy mencion" do
    assert_difference('Mencion.count', -1) do
      delete :destroy, id: @mencion
    end

    assert_redirected_to mencions_path
  end
end

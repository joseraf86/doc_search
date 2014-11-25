require 'test_helper'

class ReconocimientosControllerTest < ActionController::TestCase
  setup do
    @reconocimiento = reconocimiento(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reconocimiento)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reconocimiento" do
    assert_difference('Reconocimiento.count') do
      post :create, reconocimiento: { descripcion: @reconocimiento.descripcion }
    end

    assert_redirected_to reconocimiento_path(assigns(:reconocimiento))
  end

  test "should show reconocimiento" do
    get :show, id: @reconocimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reconocimiento
    assert_response :success
  end

  test "should update reconocimiento" do
    put :update, id: @reconocimiento, reconocimiento: { descripcion: @reconocimiento.descripcion }
    assert_redirected_to reconocimiento_path(assigns(:reconocimiento))
  end

  test "should destroy reconocimiento" do
    assert_difference('Reconocimiento.count', -1) do
      delete :destroy, id: @reconocimiento
    end

    assert_redirected_to reconocimientos_path
  end
end

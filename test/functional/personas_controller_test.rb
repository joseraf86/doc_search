require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = persona(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persona)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { apellidos: @persona.apellidos, cedula: @persona.cedula, email: @persona.email, nombre_completo: @persona.nombre_completo, nombres: @persona.nombres }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    put :update, id: @persona, persona: { apellidos: @persona.apellidos, cedula: @persona.cedula, email: @persona.email, nombre_completo: @persona.nombre_completo, nombres: @persona.nombres }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end

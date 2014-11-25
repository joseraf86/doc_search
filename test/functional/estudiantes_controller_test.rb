require 'test_helper'

class EstudiantesControllerTest < ActionController::TestCase
  setup do
    @estudiante = estudiante(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudiante)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudiante" do
    assert_difference('Estudiante.count') do
      post :create, estudiante: { eficiencia: @estudiante.eficiencia, promedio_general: @estudiante.promedio_general, promedio_ponderado: @estudiante.promedio_ponderado }
    end

    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should show estudiante" do
    get :show, id: @estudiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudiante
    assert_response :success
  end

  test "should update estudiante" do
    put :update, id: @estudiante, estudiante: { eficiencia: @estudiante.eficiencia, promedio_general: @estudiante.promedio_general, promedio_ponderado: @estudiante.promedio_ponderado }
    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should destroy estudiante" do
    assert_difference('Estudiante.count', -1) do
      delete :destroy, id: @estudiante
    end

    assert_redirected_to estudiantes_path
  end
end

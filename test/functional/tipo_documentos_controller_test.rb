require 'test_helper'

class TipoDocumentosControllerTest < ActionController::TestCase
  setup do
    @tipo_documento = tipo_documento(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_documento)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_documento" do
    assert_difference('TipoDocumento.count') do
      post :create, tipo_documento: { descripcion: @tipo_documento.descripcion, descripcion_corta: @tipo_documento.descripcion_corta }
    end

    assert_redirected_to tipo_documento_path(assigns(:tipo_documento))
  end

  test "should show tipo_documento" do
    get :show, id: @tipo_documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_documento
    assert_response :success
  end

  test "should update tipo_documento" do
    put :update, id: @tipo_documento, tipo_documento: { descripcion: @tipo_documento.descripcion, descripcion_corta: @tipo_documento.descripcion_corta }
    assert_redirected_to tipo_documento_path(assigns(:tipo_documento))
  end

  test "should destroy tipo_documento" do
    assert_difference('TipoDocumento.count', -1) do
      delete :destroy, id: @tipo_documento
    end

    assert_redirected_to tipo_documentos_path
  end
end

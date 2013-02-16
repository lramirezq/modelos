require 'test_helper'

class DetallecompetenciasControllerTest < ActionController::TestCase
  setup do
    @detallecompetencia = detallecompetencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detallecompetencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detallecompetencia" do
    assert_difference('Detallecompetencia.count') do
      post :create, :detallecompetencia => @detallecompetencia.attributes
    end

    assert_redirected_to detallecompetencia_path(assigns(:detallecompetencia))
  end

  test "should show detallecompetencia" do
    get :show, :id => @detallecompetencia.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @detallecompetencia.to_param
    assert_response :success
  end

  test "should update detallecompetencia" do
    put :update, :id => @detallecompetencia.to_param, :detallecompetencia => @detallecompetencia.attributes
    assert_redirected_to detallecompetencia_path(assigns(:detallecompetencia))
  end

  test "should destroy detallecompetencia" do
    assert_difference('Detallecompetencia.count', -1) do
      delete :destroy, :id => @detallecompetencia.to_param
    end

    assert_redirected_to detallecompetencias_path
  end
end

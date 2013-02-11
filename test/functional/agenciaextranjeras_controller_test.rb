require 'test_helper'

class AgenciaextranjerasControllerTest < ActionController::TestCase
  setup do
    @agenciaextranjera = agenciaextranjeras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenciaextranjeras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenciaextranjera" do
    assert_difference('Agenciaextranjera.count') do
      post :create, :agenciaextranjera => @agenciaextranjera.attributes
    end

    assert_redirected_to agenciaextranjera_path(assigns(:agenciaextranjera))
  end

  test "should show agenciaextranjera" do
    get :show, :id => @agenciaextranjera.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @agenciaextranjera.to_param
    assert_response :success
  end

  test "should update agenciaextranjera" do
    put :update, :id => @agenciaextranjera.to_param, :agenciaextranjera => @agenciaextranjera.attributes
    assert_redirected_to agenciaextranjera_path(assigns(:agenciaextranjera))
  end

  test "should destroy agenciaextranjera" do
    assert_difference('Agenciaextranjera.count', -1) do
      delete :destroy, :id => @agenciaextranjera.to_param
    end

    assert_redirected_to agenciaextranjeras_path
  end
end

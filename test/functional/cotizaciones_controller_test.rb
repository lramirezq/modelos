require 'test_helper'

class CotizacionesControllerTest < ActionController::TestCase
  setup do
    @cotizacione = cotizaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cotizaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cotizacione" do
    assert_difference('Cotizacione.count') do
      post :create, :cotizacione => @cotizacione.attributes
    end

    assert_redirected_to cotizacione_path(assigns(:cotizacione))
  end

  test "should show cotizacione" do
    get :show, :id => @cotizacione.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cotizacione.to_param
    assert_response :success
  end

  test "should update cotizacione" do
    put :update, :id => @cotizacione.to_param, :cotizacione => @cotizacione.attributes
    assert_redirected_to cotizacione_path(assigns(:cotizacione))
  end

  test "should destroy cotizacione" do
    assert_difference('Cotizacione.count', -1) do
      delete :destroy, :id => @cotizacione.to_param
    end

    assert_redirected_to cotizaciones_path
  end
end

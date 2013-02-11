require 'test_helper'

class AgenciamadresControllerTest < ActionController::TestCase
  setup do
    @agenciamadre = agenciamadres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agenciamadres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agenciamadre" do
    assert_difference('Agenciamadre.count') do
      post :create, :agenciamadre => @agenciamadre.attributes
    end

    assert_redirected_to agenciamadre_path(assigns(:agenciamadre))
  end

  test "should show agenciamadre" do
    get :show, :id => @agenciamadre.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @agenciamadre.to_param
    assert_response :success
  end

  test "should update agenciamadre" do
    put :update, :id => @agenciamadre.to_param, :agenciamadre => @agenciamadre.attributes
    assert_redirected_to agenciamadre_path(assigns(:agenciamadre))
  end

  test "should destroy agenciamadre" do
    assert_difference('Agenciamadre.count', -1) do
      delete :destroy, :id => @agenciamadre.to_param
    end

    assert_redirected_to agenciamadres_path
  end
end

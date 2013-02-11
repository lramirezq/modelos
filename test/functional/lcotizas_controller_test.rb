require 'test_helper'

class LcotizasControllerTest < ActionController::TestCase
  setup do
    @lcotiza = lcotizas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lcotizas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lcotiza" do
    assert_difference('Lcotiza.count') do
      post :create, :lcotiza => @lcotiza.attributes
    end

    assert_redirected_to lcotiza_path(assigns(:lcotiza))
  end

  test "should show lcotiza" do
    get :show, :id => @lcotiza.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lcotiza.to_param
    assert_response :success
  end

  test "should update lcotiza" do
    put :update, :id => @lcotiza.to_param, :lcotiza => @lcotiza.attributes
    assert_redirected_to lcotiza_path(assigns(:lcotiza))
  end

  test "should destroy lcotiza" do
    assert_difference('Lcotiza.count', -1) do
      delete :destroy, :id => @lcotiza.to_param
    end

    assert_redirected_to lcotizas_path
  end
end

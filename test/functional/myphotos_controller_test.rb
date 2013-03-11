require 'test_helper'

class MyphotosControllerTest < ActionController::TestCase
  setup do
    @myphoto = myphotos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myphotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myphoto" do
    assert_difference('Myphoto.count') do
      post :create, :myphoto => @myphoto.attributes
    end

    assert_redirected_to myphoto_path(assigns(:myphoto))
  end

  test "should show myphoto" do
    get :show, :id => @myphoto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @myphoto.to_param
    assert_response :success
  end

  test "should update myphoto" do
    put :update, :id => @myphoto.to_param, :myphoto => @myphoto.attributes
    assert_redirected_to myphoto_path(assigns(:myphoto))
  end

  test "should destroy myphoto" do
    assert_difference('Myphoto.count', -1) do
      delete :destroy, :id => @myphoto.to_param
    end

    assert_redirected_to myphotos_path
  end
end

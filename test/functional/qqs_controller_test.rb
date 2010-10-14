require 'test_helper'

class QqsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qq" do
    assert_difference('Qq.count') do
      post :create, :qq => { }
    end

    assert_redirected_to qq_path(assigns(:qq))
  end

  test "should show qq" do
    get :show, :id => qqs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => qqs(:one).to_param
    assert_response :success
  end

  test "should update qq" do
    put :update, :id => qqs(:one).to_param, :qq => { }
    assert_redirected_to qq_path(assigns(:qq))
  end

  test "should destroy qq" do
    assert_difference('Qq.count', -1) do
      delete :destroy, :id => qqs(:one).to_param
    end

    assert_redirected_to qqs_path
  end
end

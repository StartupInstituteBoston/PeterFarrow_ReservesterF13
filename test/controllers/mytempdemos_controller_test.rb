require 'test_helper'

class MytempdemosControllerTest < ActionController::TestCase
  setup do
    @mytempdemo = mytempdemos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mytempdemos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mytempdemo" do
    assert_difference('Mytempdemo.count') do
      post :create, mytempdemo: { content: @mytempdemo.content, name: @mytempdemo.name }
    end

    assert_redirected_to mytempdemo_path(assigns(:mytempdemo))
  end

  test "should show mytempdemo" do
    get :show, id: @mytempdemo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mytempdemo
    assert_response :success
  end

  test "should update mytempdemo" do
    patch :update, id: @mytempdemo, mytempdemo: { content: @mytempdemo.content, name: @mytempdemo.name }
    assert_redirected_to mytempdemo_path(assigns(:mytempdemo))
  end

  test "should destroy mytempdemo" do
    assert_difference('Mytempdemo.count', -1) do
      delete :destroy, id: @mytempdemo
    end

    assert_redirected_to mytempdemos_path
  end
end

require 'test_helper'

class SocksControllerTest < ActionController::TestCase
  setup do
    @sock = socks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:socks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sock" do
    assert_difference('Sock.count') do
      post :create, sock: { image: @sock.image, name: @sock.name }
    end

    assert_redirected_to sock_path(assigns(:sock))
  end

  test "should show sock" do
    get :show, id: @sock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sock
    assert_response :success
  end

  test "should update sock" do
    put :update, id: @sock, sock: { image: @sock.image, name: @sock.name }
    assert_redirected_to sock_path(assigns(:sock))
  end

  test "should destroy sock" do
    assert_difference('Sock.count', -1) do
      delete :destroy, id: @sock
    end

    assert_redirected_to socks_path
  end
end

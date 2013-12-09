require 'test_helper'

class WeibosControllerTest < ActionController::TestCase
  setup do
    @weibo = weibos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weibos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weibo" do
    assert_difference('Weibo.count') do
      post :create, weibo: { content: @weibo.content, favorite: @weibo.favorite, user_id: @weibo.user_id }
    end

    assert_redirected_to weibo_path(assigns(:weibo))
  end

  test "should show weibo" do
    get :show, id: @weibo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weibo
    assert_response :success
  end

  test "should update weibo" do
    put :update, id: @weibo, weibo: { content: @weibo.content, favorite: @weibo.favorite, user_id: @weibo.user_id }
    assert_redirected_to weibo_path(assigns(:weibo))
  end

  test "should destroy weibo" do
    assert_difference('Weibo.count', -1) do
      delete :destroy, id: @weibo
    end

    assert_redirected_to weibos_path
  end
end

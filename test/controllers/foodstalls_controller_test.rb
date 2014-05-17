require 'test_helper'

class FoodstallsControllerTest < ActionController::TestCase
  setup do
    @foodstall = foodstalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodstalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodstall" do
    assert_difference('Foodstall.count') do
      post :create, foodstall: { food: @foodstall.food, price: @foodstall.price }
    end

    assert_redirected_to foodstall_path(assigns(:foodstall))
  end

  test "should show foodstall" do
    get :show, id: @foodstall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foodstall
    assert_response :success
  end

  test "should update foodstall" do
    patch :update, id: @foodstall, foodstall: { food: @foodstall.food, price: @foodstall.price }
    assert_redirected_to foodstall_path(assigns(:foodstall))
  end

  test "should destroy foodstall" do
    assert_difference('Foodstall.count', -1) do
      delete :destroy, id: @foodstall
    end

    assert_redirected_to foodstalls_path
  end
end

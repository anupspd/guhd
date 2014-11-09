require 'test_helper'

class CarResControllerTest < ActionController::TestCase
  setup do
    @car_re = car_res(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_res)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_re" do
    assert_difference('CarRe.count') do
      post :create, car_re: { destination: @car_re.destination, reservation_id: @car_re.reservation_id, source: @car_re.source }
    end

    assert_redirected_to car_re_path(assigns(:car_re))
  end

  test "should show car_re" do
    get :show, id: @car_re
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_re
    assert_response :success
  end

  test "should update car_re" do
    patch :update, id: @car_re, car_re: { destination: @car_re.destination, reservation_id: @car_re.reservation_id, source: @car_re.source }
    assert_redirected_to car_re_path(assigns(:car_re))
  end

  test "should destroy car_re" do
    assert_difference('CarRe.count', -1) do
      delete :destroy, id: @car_re
    end

    assert_redirected_to car_res_path
  end
end

require 'test_helper'

class HallResControllerTest < ActionController::TestCase
  setup do
    @hall_re = hall_res(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hall_res)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hall_re" do
    assert_difference('HallRe.count') do
      post :create, hall_re: { hall: @hall_re.hall, reservation_id: @hall_re.reservation_id }
    end

    assert_redirected_to hall_re_path(assigns(:hall_re))
  end

  test "should show hall_re" do
    get :show, id: @hall_re
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hall_re
    assert_response :success
  end

  test "should update hall_re" do
    patch :update, id: @hall_re, hall_re: { hall: @hall_re.hall, reservation_id: @hall_re.reservation_id }
    assert_redirected_to hall_re_path(assigns(:hall_re))
  end

  test "should destroy hall_re" do
    assert_difference('HallRe.count', -1) do
      delete :destroy, id: @hall_re
    end

    assert_redirected_to hall_res_path
  end
end

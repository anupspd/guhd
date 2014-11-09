require 'test_helper'

class GhResControllerTest < ActionController::TestCase
  setup do
    @gh_re = gh_res(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gh_res)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gh_re" do
    assert_difference('GhRe.count') do
      post :create, gh_re: { guestAge: @gh_re.guestAge, guestEMail: @gh_re.guestEMail, guestName: @gh_re.guestName, guestPhone: @gh_re.guestPhone, guestSex: @gh_re.guestSex, guestType: @gh_re.guestType, reservation_id: @gh_re.reservation_id }
    end

    assert_redirected_to gh_re_path(assigns(:gh_re))
  end

  test "should show gh_re" do
    get :show, id: @gh_re
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gh_re
    assert_response :success
  end

  test "should update gh_re" do
    patch :update, id: @gh_re, gh_re: { guestAge: @gh_re.guestAge, guestEMail: @gh_re.guestEMail, guestName: @gh_re.guestName, guestPhone: @gh_re.guestPhone, guestSex: @gh_re.guestSex, guestType: @gh_re.guestType, reservation_id: @gh_re.reservation_id }
    assert_redirected_to gh_re_path(assigns(:gh_re))
  end

  test "should destroy gh_re" do
    assert_difference('GhRe.count', -1) do
      delete :destroy, id: @gh_re
    end

    assert_redirected_to gh_res_path
  end
end

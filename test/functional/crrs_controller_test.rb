require 'test_helper'

class CrrsControllerTest < ActionController::TestCase
  setup do
    @crr = crrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crr" do
    assert_difference('Crr.count') do
      post :create, crr: { code: @crr.code, expiry: @crr.expiry, link: @crr.link, name: @crr.name }
    end

    assert_redirected_to crr_path(assigns(:crr))
  end

  test "should show crr" do
    get :show, id: @crr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crr
    assert_response :success
  end

  test "should update crr" do
    put :update, id: @crr, crr: { code: @crr.code, expiry: @crr.expiry, link: @crr.link, name: @crr.name }
    assert_redirected_to crr_path(assigns(:crr))
  end

  test "should destroy crr" do
    assert_difference('Crr.count', -1) do
      delete :destroy, id: @crr
    end

    assert_redirected_to crrs_path
  end
end

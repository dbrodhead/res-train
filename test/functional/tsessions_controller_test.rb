require 'test_helper'

class TsessionsControllerTest < ActionController::TestCase
  setup do
    @tsession = tsessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tsessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tsession" do
    assert_difference('Tsession.count') do
      post :create, tsession: { activity: @tsession.activity, instructor: @tsession.instructor, location: @tsession.location, period_id: @tsession.period_id, trade_id: @tsession.trade_id, training_day_id: @tsession.training_day_id }
    end

    assert_redirected_to tsession_path(assigns(:tsession))
  end

  test "should show tsession" do
    get :show, id: @tsession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tsession
    assert_response :success
  end

  test "should update tsession" do
    put :update, id: @tsession, tsession: { activity: @tsession.activity, instructor: @tsession.instructor, location: @tsession.location, period_id: @tsession.period_id, trade_id: @tsession.trade_id, training_day_id: @tsession.training_day_id }
    assert_redirected_to tsession_path(assigns(:tsession))
  end

  test "should destroy tsession" do
    assert_difference('Tsession.count', -1) do
      delete :destroy, id: @tsession
    end

    assert_redirected_to tsessions_path
  end
end

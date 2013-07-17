require 'test_helper'

class TrainingDaysControllerTest < ActionController::TestCase
  setup do
    @training_day = training_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_day" do
    assert_difference('TrainingDay.count') do
      post :create, training_day: { day: @training_day.day, details: @training_day.details, weekday: @training_day.weekday }
    end

    assert_redirected_to training_day_path(assigns(:training_day))
  end

  test "should show training_day" do
    get :show, id: @training_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training_day
    assert_response :success
  end

  test "should update training_day" do
    put :update, id: @training_day, training_day: { day: @training_day.day, details: @training_day.details, weekday: @training_day.weekday }
    assert_redirected_to training_day_path(assigns(:training_day))
  end

  test "should destroy training_day" do
    assert_difference('TrainingDay.count', -1) do
      delete :destroy, id: @training_day
    end

    assert_redirected_to training_days_path
  end
end

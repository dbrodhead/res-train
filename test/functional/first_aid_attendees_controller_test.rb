require 'test_helper'

class FirstAidAttendeesControllerTest < ActionController::TestCase
  setup do
    @first_aid_attendee = first_aid_attendees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_aid_attendees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_aid_attendee" do
    assert_difference('FirstAidAttendee.count') do
      post :create, first_aid_attendee: { created_by: @first_aid_attendee.created_by, department_id: @first_aid_attendee.department_id, email: @first_aid_attendee.email, first_aid_course_id: @first_aid_attendee.first_aid_course_id, fname: @first_aid_attendee.fname, lastthree: @first_aid_attendee.lastthree, lname: @first_aid_attendee.lname, user_id: @first_aid_attendee.user_id }
    end

    assert_redirected_to first_aid_attendee_path(assigns(:first_aid_attendee))
  end

  test "should show first_aid_attendee" do
    get :show, id: @first_aid_attendee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_aid_attendee
    assert_response :success
  end

  test "should update first_aid_attendee" do
    put :update, id: @first_aid_attendee, first_aid_attendee: { created_by: @first_aid_attendee.created_by, department_id: @first_aid_attendee.department_id, email: @first_aid_attendee.email, first_aid_course_id: @first_aid_attendee.first_aid_course_id, fname: @first_aid_attendee.fname, lastthree: @first_aid_attendee.lastthree, lname: @first_aid_attendee.lname, user_id: @first_aid_attendee.user_id }
    assert_redirected_to first_aid_attendee_path(assigns(:first_aid_attendee))
  end

  test "should destroy first_aid_attendee" do
    assert_difference('FirstAidAttendee.count', -1) do
      delete :destroy, id: @first_aid_attendee
    end

    assert_redirected_to first_aid_attendees_path
  end
end

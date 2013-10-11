require 'test_helper'

class FirstAidCoursesControllerTest < ActionController::TestCase
  setup do
    @first_aid_course = first_aid_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_aid_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_aid_course" do
    assert_difference('FirstAidCourse.count') do
      post :create, first_aid_course: { edate: @first_aid_course.edate, instructor: @first_aid_course.instructor, iutolink: @first_aid_course.iutolink, iutonumber: @first_aid_course.iutonumber, language: @first_aid_course.language, sdate: @first_aid_course.sdate, spots: @first_aid_course.spots }
    end

    assert_redirected_to first_aid_course_path(assigns(:first_aid_course))
  end

  test "should show first_aid_course" do
    get :show, id: @first_aid_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_aid_course
    assert_response :success
  end

  test "should update first_aid_course" do
    put :update, id: @first_aid_course, first_aid_course: { edate: @first_aid_course.edate, instructor: @first_aid_course.instructor, iutolink: @first_aid_course.iutolink, iutonumber: @first_aid_course.iutonumber, language: @first_aid_course.language, sdate: @first_aid_course.sdate, spots: @first_aid_course.spots }
    assert_redirected_to first_aid_course_path(assigns(:first_aid_course))
  end

  test "should destroy first_aid_course" do
    assert_difference('FirstAidCourse.count', -1) do
      delete :destroy, id: @first_aid_course
    end

    assert_redirected_to first_aid_courses_path
  end
end

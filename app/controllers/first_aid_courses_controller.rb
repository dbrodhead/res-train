class FirstAidCoursesController < ApplicationController
  load_and_authorize_resource
  # GET /first_aid_courses
  # GET /first_aid_courses.json
  def index
    @first_aid_courses = FirstAidCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @first_aid_courses }
    end
  end

  # GET /first_aid_courses/1
  # GET /first_aid_courses/1.json
  def show
    @first_aid_course = FirstAidCourse.includes(:first_aid_attendees).find(params[:id])
    session[:return_to] = request.fullpath

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @first_aid_course }
    end
  end

  # GET /first_aid_courses/new
  # GET /first_aid_courses/new.json
  def new
    @first_aid_course = FirstAidCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @first_aid_course }
    end
  end

  # GET /first_aid_courses/1/edit
  def edit
    @first_aid_course = FirstAidCourse.find(params[:id])
  end

  # POST /first_aid_courses
  # POST /first_aid_courses.json
  def create
    @first_aid_course = FirstAidCourse.new(params[:first_aid_course])

    respond_to do |format|
      if @first_aid_course.save
        format.html { redirect_to @first_aid_course, notice: 'First aid course was successfully created.' }
        format.json { render json: @first_aid_course, status: :created, location: @first_aid_course }
      else
        format.html { render action: "new" }
        format.json { render json: @first_aid_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /first_aid_courses/1
  # PUT /first_aid_courses/1.json
  def update
    @first_aid_course = FirstAidCourse.find(params[:id])

    respond_to do |format|
      if @first_aid_course.update_attributes(params[:first_aid_course])
        format.html { redirect_to @first_aid_course, notice: 'First aid course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @first_aid_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_aid_courses/1
  # DELETE /first_aid_courses/1.json
  def destroy
    @first_aid_course = FirstAidCourse.find(params[:id])
    @first_aid_course.destroy

    respond_to do |format|
      format.html { redirect_to first_aid_courses_url }
      format.json { head :no_content }
    end
  end
end

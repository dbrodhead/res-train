class FirstAidAttendeesController < ApplicationController
  load_and_authorize_resource
  # GET /first_aid_attendees
  # GET /first_aid_attendees.json
  def index
    @first_aid_attendees = FirstAidAttendee.all
    session[:return_to] = request.fullpath

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @first_aid_attendees }
    end
  end

  # GET /first_aid_attendees/1
  # GET /first_aid_attendees/1.json
  def show
    @first_aid_attendee = FirstAidAttendee.find(params[:id])
    session[:return_to] = request.fullpath

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @first_aid_attendee }
    end
  end

  # GET /first_aid_attendees/new
  # GET /first_aid_attendees/new.json
  def new
    @first_aid_attendee = FirstAidAttendee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @first_aid_attendee }
    end
  end

  # GET /first_aid_attendees/1/edit
  def edit
    @first_aid_attendee = FirstAidAttendee.find(params[:id])
  end

  # POST /first_aid_attendees
  # POST /first_aid_attendees.json
  def create
    @first_aid_attendee = FirstAidAttendee.new(params[:first_aid_attendee])
    @first_aid_attendee.created_by = current_user.id

    respond_to do |format|
      if @first_aid_attendee.save
        format.html { redirect_to @first_aid_attendee, notice: 'First aid attendee was successfully created.' }
        format.json { render json: @first_aid_attendee, status: :created, location: @first_aid_attendee }
      else
        format.html { render action: "new" }
        format.json { render json: @first_aid_attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /first_aid_attendees/1
  # PUT /first_aid_attendees/1.json
  def update
    @first_aid_attendee = FirstAidAttendee.find(params[:id])

    respond_to do |format|
      if @first_aid_attendee.update_attributes(params[:first_aid_attendee])
        format.html { redirect_to @first_aid_attendee, notice: 'First aid attendee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @first_aid_attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_aid_attendees/1
  # DELETE /first_aid_attendees/1.json
  def destroy
    @first_aid_attendee = FirstAidAttendee.find(params[:id])
    @first_aid_attendee.destroy

    respond_to do |format|
      format.html { redirect_to first_aid_attendees_url }
      format.json { head :no_content }
    end
  end
end

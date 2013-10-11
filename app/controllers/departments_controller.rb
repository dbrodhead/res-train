class DepartmentsController < InheritedResources::Base
  load_and_authorize_resource
  
  # GET /departments/1
  # GET /departments/1.json
  def show
    @department = Department.includes(:positions).find(params[:id])
    session[:return_to] = request.fullpath

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @department }
    end
  end
end

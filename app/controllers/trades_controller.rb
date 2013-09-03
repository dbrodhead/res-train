class TradesController < InheritedResources::Base
  load_and_authorize_resource
  
  # GET /trades/1
  # GET /trades/1.json
  def show
    @trade = Trade.includes(:tsessions).find(params[:id])
    session[:return_to] = request.fullpath

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trade }
    end
  end
end

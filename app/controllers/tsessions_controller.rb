class TsessionsController < InheritedResources::Base
  load_and_authorize_resource
  
  # GET /tsessions
  # GET /tsessions.json
  def index
    @tsessions = Tsession.all
    session[:return_to] = request.fullpath

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tsessions }
    end
  end
  
  def show
    @tsession = Tsession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tsession }
    end
  end
  
  def update
    @tsession = Tsession.find(params[:id])

    respond_to do |format|
      if @tsession.update_attributes(params[:tsession])
        format.html { redirect_to @tsession, notice: 'Tsession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tsession.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # POST /tsessions
  # POST /tsessions.json
  def create
    # This modified create adds a temp variable :multi which if selected, creates a new Tsession for each Trade using the period and training day only. No other params are passed.
    if params[:tsession][:multi] == "0"
      @tsession = Tsession.new(params[:tsession])

      respond_to do |format|
      if @tsession.save
        format.html { redirect_to @tsession, notice: 'Tsession was successfully created.' }
        format.json { render json: @tsession, status: :created, location: @tsession }
      else
        format.html { render action: "new" }
        format.json { render json: @tsession.errors, status: :unprocessable_entity }
      end
    end
    elsif params[:tsession][:multi] == "1"
      @trade = Trade.all
      @trade.each do |trade|
        @tsession = Tsession.new(:trade_id => trade.id, :training_day_id => params[:tsession][:training_day_id], :period_id => params[:tsession][:period_id])
        @tsession.save
      end 
      redirect_to action: "index", notice: 'Tsessions were successfully created.'
    end
  end
end

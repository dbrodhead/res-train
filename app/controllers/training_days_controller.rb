class TrainingDaysController < InheritedResources::Base
  load_and_authorize_resource

  # GET /training_days
  # GET /training_days.json
  def index
    # Only display upcoming training days
    @training_days = TrainingDay.where("day >= ?", Date.today)
    # @training_days = TrainingDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @training_days }
    end
  end
  
  # GET /training_days/1
  # GET /training_days/1.json  
  def show
    @training_day = TrainingDay.includes(tsessions: [:period, :trade]).order("periods.stime ASC, trades.name ASC").find(params[:id])
    # Sort by Trade then by period start time
    # @training_day.tsessions.sort!{|a,b| a.period.stime <=> b.period.stime || a.trade.name <=> b.trade.name }
    session[:return_to] = request.fullpath

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @training_day }
      format.pdf do
        pdf = TrainingDayPdf.new(@training_day)
        send_data pdf.render, filename: "training_day_#{@training_day.id}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end
  
  # POST /training_days
  # POST /training_days.json
  def create
    @training_day = TrainingDay.new(params[:training_day])
    # This code creates new periods for each trade depending on the Day. Need to move to own method in Tsession.
    # @trade = Trade.all
    # @period = Period.find(:all, :conditions => { :pgroups => { :name => "Saturday Day"}}, :joins => :pgroup)
    # @trade.each do |trade|
      # @period.each do |period|
        # @training_day.tsessions.build(:trade_id => trade.id, :period_id => period.id)
      # end
    # end

    respond_to do |format|
      if @training_day.save
        format.html { redirect_to @training_day, notice: 'Training day was successfully created.' }
        format.json { render json: @training_day, status: :created, location: @training_day }
      else
        format.html { render action: "new" }
        format.json { render json: @training_day.errors, status: :unprocessable_entity }
      end
    end
  end
end

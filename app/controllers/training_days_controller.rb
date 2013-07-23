class TrainingDaysController < InheritedResources::Base
  load_and_authorize_resource

  # GET /training_days/1
  # GET /training_days/1.json  
  def show
    @training_day = TrainingDay.includes(:tsessions).find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @training_day }
    end
  end
  
  # POST /training_days
  # POST /training_days.json
  def create
    @training_day = TrainingDay.new(params[:training_day])
    @trade = Trade.all
    # @period = Period.find(:pgroup_name => "Saturday Day")
    # @period = Period.find(:all, :conditions => ["name like ?","%Saturday%"])
    @trade.each do |trade|
      @period.each do |period|
        @training_day.tsessions.build(:trade_id => trade.id, :period_id => period.id)
      end
    end

    respond_to do |format|
      if @training_day.save
        # This code is to create a new tsession for the specified date for each trade and each period.
        # @trades = Trade.all
        # @periods = Period.all
        # @trades.each do |i|
          # @tsession = Tsession.new(:training_day_id => i., :trade_id => )
          # @tsession.save
          # if @training_day.params[:weekday] = "Thursday"
            #need some code
          # else if @training_day.params[:weekday] = "Saturday"
            #need more code
          # else
            #and lastely
          # end
        # end
        
        # This code is to create a new tsession for the specified date for each trade and each period.
        # Trades.each do |i|
	        # Periods.params[:weekday => x].each do |j|
		        # Tsession.new({ :training_day_id => '?', :trade_id => i, :period_id => j, :instructor => nil, :activity => nil, :location => nil}).save
	        # End
        # End
        format.html { redirect_to @training_day, notice: 'Training day was successfully created.' }
        format.json { render json: @training_day, status: :created, location: @training_day }
      else
        format.html { render action: "new" }
        format.json { render json: @training_day.errors, status: :unprocessable_entity }
      end
    end
  end
end

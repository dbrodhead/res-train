class TsessionsController < InheritedResources::Base
  load_and_authorize_resource
  
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
end

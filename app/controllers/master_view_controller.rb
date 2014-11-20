class MasterViewController < ApplicationController
  def index
  	@master = Master.all
  end

  def new
  	@master = Master.new
  end

  def create
  	@master = Master.create(master_params)

  	respond_to do |format|
  		if @master.save
  			format.html { redirect_to master_show_url(@master)}
  		else
  			flash[:notice] = "Name and description are required"
  			format.html { render :new }
  		end
  	end
  end

  def show
  	@master = Master.find(params[:id])  
  end

  def delete
    @master = Master.find(params[:id])
    @master.secondaries.destroy_all
    @master.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: "Master is deleted." }
    end
  end

  private

  def master_params
    params.require(:master).permit(:name, :description)
  end


end
  
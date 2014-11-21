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

  def edit
    @master = Master.find(params[:id])
  end

  def update
    @master = Master.find(params[:id])
    respond_to do |format|
      if @master.update(master_params)
        format.html { redirect_to master_show_url, notice: "Update Successfully" }
      else
        format.html { render master_edit_url }
      end
    end
  end

  def delete
    @master = Master.find(params[:id])
    @master.secondaries.destroy_all
    @master.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: "Master is deleted." }
    end
  end

  def search
    @master = Master.master_search(params[:search])
  end

  private

  def master_params
    params.require(:master).permit(:name, :description)
  end

end
  
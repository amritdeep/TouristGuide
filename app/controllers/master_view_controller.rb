class MasterViewController < ApplicationController
  def index
  	@master = Master.all
  end

  def new
  	@master = Master.new
  end

  def create
  	@master = Master.create(name: params[:master][:name], description: params[:master][:description])

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
end

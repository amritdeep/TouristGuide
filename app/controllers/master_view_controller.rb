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
  			format.html { render :new }
  		end
  	end
  end

  def show
  end
end

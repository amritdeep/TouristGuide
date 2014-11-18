class MasterViewController < ApplicationController
  def index
  	@master = Master.all
  end

  def new
  end

  def create
  	@master = Master.create(name: params[:master][:name], description: params[:master][:description])
  end
end

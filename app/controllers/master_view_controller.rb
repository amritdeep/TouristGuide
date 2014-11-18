class MasterViewController < ApplicationController
  def index
  	@master = Master.all
  end

  def new
  end
end

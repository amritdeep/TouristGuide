class MasterViewController < ApplicationController
  def index
  	@master = Master.all
  end
end

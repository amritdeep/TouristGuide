class SecondaryTblsController < ApplicationController
  before_action :set_secondary_tbl, only: [:show, :edit, :update, :destroy]

  # GET /secondary_tbls
  # GET /secondary_tbls.json
  def index
    @secondary_tbls = SecondaryTbl.all
  end

  # GET /secondary_tbls/1
  # GET /secondary_tbls/1.json
  def show
  end

  # GET /secondary_tbls/new
  def new
    @secondary_tbl = SecondaryTbl.new
  end

  # GET /secondary_tbls/1/edit
  def edit
  end

  # POST /secondary_tbls
  # POST /secondary_tbls.json
  def create
    @secondary_tbl = SecondaryTbl.new(secondary_tbl_params)

    respond_to do |format|
      if @secondary_tbl.save
        format.html { redirect_to @secondary_tbl, notice: 'Secondary tbl was successfully created.' }
        format.json { render :show, status: :created, location: @secondary_tbl }
      else
        format.html { render :new }
        format.json { render json: @secondary_tbl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secondary_tbls/1
  # PATCH/PUT /secondary_tbls/1.json
  def update
    respond_to do |format|
      if @secondary_tbl.update(secondary_tbl_params)
        format.html { redirect_to @secondary_tbl, notice: 'Secondary tbl was successfully updated.' }
        format.json { render :show, status: :ok, location: @secondary_tbl }
      else
        format.html { render :edit }
        format.json { render json: @secondary_tbl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secondary_tbls/1
  # DELETE /secondary_tbls/1.json
  def destroy
    @secondary_tbl.destroy
    respond_to do |format|
      format.html { redirect_to secondary_tbls_url, notice: 'Secondary tbl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secondary_tbl
      @secondary_tbl = SecondaryTbl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secondary_tbl_params
      params.require(:secondary_tbl).permit(:name, :description, :height, :width, :distance_starts, :distance_ends, :masters_id_id)
    end
end

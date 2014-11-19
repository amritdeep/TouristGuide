class TouristGuideImagesController < ApplicationController
  before_action :set_tourist_guide_image, only: [:show, :edit, :update, :destroy]

  # GET /tourist_guide_images
  # GET /tourist_guide_images.json
  def index
    @tourist_guide_images = TouristGuideImage.all
  end

  # GET /tourist_guide_images/1
  # GET /tourist_guide_images/1.json
  def show
  end

  # GET /tourist_guide_images/new
  def new
    @tourist_guide_image = TouristGuideImage.new
  end

  # GET /tourist_guide_images/1/edit
  def edit
  end

  # POST /tourist_guide_images
  # POST /tourist_guide_images.json
  def create
    @tourist_guide_image = TouristGuideImage.new(tourist_guide_image_params)

    respond_to do |format|
      if @tourist_guide_image.save
        format.html { redirect_to @tourist_guide_image, notice: 'Tourist guide image was successfully created.' }
        format.json { render :show, status: :created, location: @tourist_guide_image }
      else
        format.html { render :new }
        format.json { render json: @tourist_guide_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tourist_guide_images/1
  # PATCH/PUT /tourist_guide_images/1.json
  def update
    respond_to do |format|
      if @tourist_guide_image.update(tourist_guide_image_params)
        format.html { redirect_to @tourist_guide_image, notice: 'Tourist guide image was successfully updated.' }
        format.json { render :show, status: :ok, location: @tourist_guide_image }
      else
        format.html { render :edit }
        format.json { render json: @tourist_guide_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tourist_guide_images/1
  # DELETE /tourist_guide_images/1.json
  def destroy
    @tourist_guide_image.destroy
    respond_to do |format|
      format.html { redirect_to tourist_guide_images_url, notice: 'Tourist guide image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_guide_image
      @tourist_guide_image = TouristGuideImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_guide_image_params
      params.require(:tourist_guide_image).permit(:image_name, :image_createdby, :description_id_id)
    end
end

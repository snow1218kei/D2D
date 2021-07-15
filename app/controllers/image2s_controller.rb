class Image2sController < ApplicationController
  before_action :set_image2, only: %i[ show edit update destroy ]

  # GET /image2s or /image2s.json
  def index
    @image2s = Image2.all
  end

  # GET /image2s/1 or /image2s/1.json
  def show
  end

  # GET /image2s/new
  def new
    @image2 = Image2.new
  end

  # GET /image2s/1/edit
  def edit
  end

  # POST /image2s or /image2s.json
  def create
    @image2 = Image2.new(image2_params)

    respond_to do |format|
      if @image2.save
        format.html { redirect_to @image2, notice: "Image2 was successfully created." }
        format.json { render :show, status: :created, location: @image2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @image2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image2s/1 or /image2s/1.json
  def update
    respond_to do |format|
      if @image2.update(image2_params)
        format.html { redirect_to @image2, notice: "Image2 was successfully updated." }
        format.json { render :show, status: :ok, location: @image2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @image2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image2s/1 or /image2s/1.json
  def destroy
    @image2.destroy
    respond_to do |format|
      format.html { redirect_to image2s_url, notice: "Image2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image2
      @image2 = Image2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image2_params
      params.require(:image2).permit(:image)
    end
end

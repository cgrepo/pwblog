class ErrBrandsController < ApplicationController
  before_action :set_err_brand, only: [:show, :edit, :update, :destroy]

  # GET /err_brands
  # GET /err_brands.json
  def index
    @err_brands = ErrBrand.all
  end

  # GET /err_brands/1
  # GET /err_brands/1.json
  def show
  end

  # GET /err_brands/new
  def new
    @err_brand = ErrBrand.new
  end

  # GET /err_brands/1/edit
  def edit
  end

  # POST /err_brands
  # POST /err_brands.json
  def create
    @err_brand = ErrBrand.new(err_brand_params)

    respond_to do |format|
      if @err_brand.save
        format.html { redirect_to @err_brand, notice: 'Err brand was successfully created.' }
        format.json { render :show, status: :created, location: @err_brand }
      else
        format.html { render :new }
        format.json { render json: @err_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /err_brands/1
  # PATCH/PUT /err_brands/1.json
  def update
    respond_to do |format|
      if @err_brand.update(err_brand_params)
        format.html { redirect_to @err_brand, notice: 'Err brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @err_brand }
      else
        format.html { render :edit }
        format.json { render json: @err_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /err_brands/1
  # DELETE /err_brands/1.json
  def destroy
    @err_brand.destroy
    respond_to do |format|
      format.html { redirect_to err_brands_url, notice: 'Err brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_err_brand
      @err_brand = ErrBrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def err_brand_params
      params.require(:err_brand).permit(:brand, :description)
    end
end

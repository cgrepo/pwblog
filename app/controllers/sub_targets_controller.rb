class SubTargetsController < ApplicationController
  before_action :set_sub_target, only: [:show, :edit, :update, :destroy]

  # GET /sub_targets
  # GET /sub_targets.json
  def index
    @sub_targets = SubTarget.all
  end

  # GET /sub_targets/1
  # GET /sub_targets/1.json
  def show
  end

  # GET /sub_targets/new
  def new
    @sub_target = SubTarget.new
  end

  # GET /sub_targets/1/edit
  def edit
  end

  # POST /sub_targets
  # POST /sub_targets.json
  def create
    @sub_target = SubTarget.new(sub_target_params)

    respond_to do |format|
      if @sub_target.save
        format.html { redirect_to @sub_targets_path, notice: 'Sub target was successfully created.' }
        format.json { render :show, status: :created, location: @sub_target }
      else
        format.html { render :new }
        format.json { render json: @sub_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_targets/1
  # PATCH/PUT /sub_targets/1.json
  def update
    respond_to do |format|
      if @sub_target.update(sub_target_params)
        format.html { redirect_to @sub_target, notice: 'Sub target was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_target }
      else
        format.html { render :edit }
        format.json { render json: @sub_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_targets/1
  # DELETE /sub_targets/1.json
  def destroy
    @sub_target.destroy
    respond_to do |format|
      format.html { redirect_to sub_targets_url, notice: 'Sub target was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_target
      @sub_target = SubTarget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_target_params
      params.require(:sub_target).permit(:name)
    end
end

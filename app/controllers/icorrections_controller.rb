class IcorrectionsController < ApplicationController
  before_action :set_icorrection, only: [:show, :edit, :update, :destroy]

  # GET /icorrections
  # GET /icorrections.json
  def index
    @icorrections = Icorrection.all.order(:genus)
  end

  # GET /icorrections/1
  # GET /icorrections/1.json
  def show
  end

  # GET /icorrections/new
  def new
    @icorrection = Icorrection.new
  end

  # GET /icorrections/1/edit
  def edit
  end

  # POST /icorrections
  # POST /icorrections.json
  def create
    @icorrection = Icorrection.new(icorrection_params)

    respond_to do |format|
      if @icorrection.save
        format.html { redirect_to @icorrection, notice: 'Icorrection was successfully created.' }
        format.json { render :show, status: :created, location: @icorrection }
      else
        format.html { render :new }
        format.json { render json: @icorrection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icorrections/1
  # PATCH/PUT /icorrections/1.json
  def update
    respond_to do |format|
      if @icorrection.update(icorrection_params)
        format.html { redirect_to @icorrection, notice: 'Icorrection was successfully updated.' }
        format.json { render :show, status: :ok, location: @icorrection }
      else
        format.html { render :edit }
        format.json { render json: @icorrection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icorrections/1
  # DELETE /icorrections/1.json
  def destroy
    @icorrection.destroy
    respond_to do |format|
      format.html { redirect_to icorrections_url, notice: 'Icorrection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icorrection
      @icorrection = Icorrection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icorrection_params
      params.require(:icorrection).permit(:title, :description, :genus, :User_id)
    end
end

class PRemindersController < ApplicationController
  before_action :set_p_reminder, only: [:show, :edit, :update, :destroy]

  # GET /p_reminders
  # GET /p_reminders.json
  def index
    @p_reminders = current_user.PReminder.all
  end

  # GET /p_reminders/1
  # GET /p_reminders/1.json
  def show
  end

  # GET /p_reminders/new
  def new
    @p_reminder = PReminder.new
  end

  # GET /p_reminders/1/edit
  def edit
  end

  # POST /p_reminders
  # POST /p_reminders.json
  def create
    @p_reminder = PReminder.new(p_reminder_params)

    respond_to do |format|
      if @p_reminder.save
        format.html { redirect_to @p_reminder, notice: 'P reminder was successfully created.' }
        format.json { render :show, status: :created, location: @p_reminder }
      else
        format.html { render :new }
        format.json { render json: @p_reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_reminders/1
  # PATCH/PUT /p_reminders/1.json
  def update
    respond_to do |format|
      if @p_reminder.update(p_reminder_params)
        format.html { redirect_to @p_reminder, notice: 'P reminder was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_reminder }
      else
        format.html { render :edit }
        format.json { render json: @p_reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_reminders/1
  # DELETE /p_reminders/1.json
  def destroy
    @p_reminder.destroy
    respond_to do |format|
      format.html { redirect_to p_reminders_url, notice: 'P reminder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_reminder
      @p_reminder = PReminder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_reminder_params
      params.require(:p_reminder).permit(:title, :description, :solution, :genus, :subgenus, :User_id)
    end
end

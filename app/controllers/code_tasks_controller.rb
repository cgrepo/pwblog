class CodeTasksController < ApplicationController
  before_action :set_code_task, only: [:show, :edit, :update, :destroy]

  # GET /code_tasks
  # GET /code_tasks.json
  def index
    # @code_tasks = CodeTask.all.order(:codebranch).order(created_at: :desc).order(done: :desc)
  end

  # GET /code_tasks/1
  # GET /code_tasks/1.json
  def show
  end

  # GET /code_tasks/new
  def new
    @code_task = CodeTask.new
  end

  # GET /code_tasks/1/edit
  def edit
  end

  # POST /code_tasks
  # POST /code_tasks.json
  def create
    @code_task = CodeTask.new(code_task_params)

    respond_to do |format|
      if @code_task.save
        format.html { redirect_to @code_task, notice: 'Code task was successfully created.' }
        format.json { render :show, status: :created, location: @code_task }
      else
        format.html { render :new }
        format.json { render json: @code_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_tasks/1
  # PATCH/PUT /code_tasks/1.json
  def update
    respond_to do |format|
      if @code_task.update(code_task_params)
        format.html { redirect_to @code_task, notice: 'Code task was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_task }
      else
        format.html { render :edit }
        format.json { render json: @code_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_tasks/1
  # DELETE /code_tasks/1.json
  def destroy
    @code_task.destroy
    respond_to do |format|
      format.html { redirect_to code_tasks_url, notice: 'Code task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def dataTable
    case params[:code_task][:cryteria]
      when '0'
        @code_tasks = CodeTask.all.order(:codebranch).order(created_at: :desc).order(done: :desc)
      when '1'
        @code_tasks = CodeTask.all.where(codebranch:'ACTIVEINVENTORY').order(:codebranch).order(created_at: :desc).order(done: :desc)
      when '2'
        @code_tasks = CodeTask.all.where(codebranch:'BIBLIOS').order(:codebranch).order(created_at: :desc).order(done: :desc)
      when '3'
        @code_tasks = CodeTask.all.where(codebranch:'DISPOSE').order(:codebranch).order(created_at: :desc).order(done: :desc)
      when '4'
        @code_tasks = CodeTask.all.where(codebranch:'PWBLOG').order(:codebranch).order(created_at: :desc).order(done: :desc)  
      
    end
    respond_to do |format|
      format.html {render :partial => 'dataTable'}
      format.js {}
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_task
      @code_task = CodeTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_task_params
      params.require(:code_task).permit(:title, :description, :done, :codebranch, :user_id, :cryteria)
    end
end

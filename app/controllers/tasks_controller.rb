class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.create(task_params)
    if @task.valid?
      redirect_to task_path(@task)
    else  
      render :new, status: :unprocessable_entity
    end
  end

  private
    def task_params
      params.require(:task).permit(:name, :description)
    end
end

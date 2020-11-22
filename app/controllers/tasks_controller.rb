class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(updated_at: :desc)
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = "Success!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  private
    def task_params
      params.require(:task).permit(:name)
    end
end

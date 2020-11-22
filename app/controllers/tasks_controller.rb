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
end

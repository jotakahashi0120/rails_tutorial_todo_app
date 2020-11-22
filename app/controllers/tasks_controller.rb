class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(updated_at: :desc)
  end
end

class TasksController < ApplicationController

  def index
    @new_task = Task.new
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.finished = false
    @task.save
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end


  private
  def task_params
    params.require(:task).permit(:name, :finished)
  end


end
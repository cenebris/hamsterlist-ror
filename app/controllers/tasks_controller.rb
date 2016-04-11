class TasksController < ApplicationController

  def index
    @new_task = Task.new
    @unfinished_tasks = Task.all.where(finished: false)
    @unfinished_tasks_count = @unfinished_tasks.count
    @finished_tasks = Task.all.where(finished: true)
  end

  def create
    @task = Task.new(task_params)
    @task.finished = false
    @task.save
    flash[:notice] = "Task #{@task.name} created"
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "Task #{@task.name} deleted"
    redirect_to tasks_path
  end

  def change_task_to_finished
    @task = Task.find(params[:id])
    @task.finished = true
    @task.save
    flash[:notice] = "Task '#{@task.name}' marked as done"
    redirect_to tasks_path
  end

  def change_task_to_unfinished
    @task = Task.find(params[:id])
    @task.finished = false
    @task.save
    flash[:notice] = "Task '#{@task.name}' marked as task to do"
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:name, :finished)
  end


end
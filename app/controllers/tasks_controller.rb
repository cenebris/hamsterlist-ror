class TasksController < ApplicationController

  def index
    @new_task = Task.new
    @tasks = Task.all
  end



end
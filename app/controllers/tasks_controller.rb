class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :delete]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    # @task = Task.new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit


  end

  def update
    @task.update(completed: true)
    redirect_to tasks_path
  end

  def delete
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params

    params.require(:task).permit(:title, :details, :completed)

  end

  def set_task
    @task = Task.find(params[:id])
  end
end

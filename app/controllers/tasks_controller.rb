class TasksController < ApplicationController
  before_action :set_list
  before_action :set_task, only: [:show, :destroy]

  def index
    @tasks = @list.tasks
  end

  def show
  end

  def new
    @task = @list.tasks.new
  end

  def create
    @task = @list.tasks.new(task_params)

    if @task.save
      redirect_to @task
    else
      render :edit
    end
  end

  def edit
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:todo)
    end
end

class Account::TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.for_project(params[:project_id])

  end

  def new
    @task = Task.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.new(task_params)
    if @task.save
      redirect_to account_project_path(@project)
    else
      flash[:danger] = 'Something went wrong, please try again'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update_attributes(task_params)
      flash[:success] = 'Task updated!'
      redirect_to account_project_tasks_path
    else
      flash[:danger] = 'Something went wrong, please try again'
      render :edit
    end
  end

  def destroy
    if @task.delete
      flash[:success] = 'Task deleted!'
      redirect_to account_project_tasks_path
    else
      flash[:danger] = 'Something went wrong, please try again'
      render :destroy
    end
  end

  private
  def task_params
    params.require(:task).permit!
  end
  def set_task
    @task = Task.find(params[:id])
  end
end

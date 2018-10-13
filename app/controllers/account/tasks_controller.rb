class Account::TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update_attributes(tasks_params)
      flash[:notice] = 'Task updated!'
      redirect_to root_path
    else
      flash[:error] = 'Sorry, please try again'
      render :edit
    end
  end

  def destroy
    if @task.delete
      flash[:notice] = 'Task deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Sorry, please try again'
      render :destroy
    end
  end

  private
  def Task_params
    params.require(:task).permit!
  end
  def set_task
    @task = Task.find(params[:id])
  end
end

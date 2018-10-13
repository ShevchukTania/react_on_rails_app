class Account::ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to account_projects_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      flash[:notice] = 'Project updated!'
      redirect_to account_project_path
    else
      flash[:error] = 'Sorry, please try again'
      render :edit
    end
  end

  def destroy
    if @project.delete
      flash[:notice] = 'Project deleted!'
      redirect_to account_projects_path
    else
      flash[:error] = 'Sorry, please try again'
      render :destroy
    end
  end

  private
  def project_params
    params.require(:project).permit!
  end
  def set_project
    @project = Project.find(params[:id])
  end
end

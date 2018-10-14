class Account::ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all.paginate(page: params[:page], per_page: 8)

  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to account_projects_path
    else
      flash[:danger] = 'Something went wrong, please try again'
      render :new
    end
  end

  def show
    @tasks = @project.tasks
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      flash[:success] = 'Project updated!'
      redirect_to account_project_path
    else
      flash[:danger] = 'Something went wrong, please try again'
      render :edit
    end
  end

  def destroy
    if @project.destroy
      flash[:success] = 'Project deleted!'
      redirect_to account_projects_path
    else
      flash[:danger] = 'Something went wrong, please try again'
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

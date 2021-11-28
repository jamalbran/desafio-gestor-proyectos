class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      redirect_to root_path, notice: 'Se ha creado el proyecto'
    else
      redirect_to root_path, alert: 'No se guardo el proyecto'
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :state, :initial_date, :end_date)
  end
end

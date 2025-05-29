class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Project.all

    respond_to do |format|
      format.html
      format.pdf do
        pdf = WickedPdf.new.pdf_from_string(
          render_to_string(template: "projects/index.html.erb", layout: 'pdf.html')
        )
        send_data pdf,
          filename: "projects_list.pdf",
          type: "application/pdf",
          disposition: "attachment"
      end
      format.xlsx do
        response.headers['Content-Disposition'] = 'attachment; filename="projects_list.xlsx"'
      end
    end
  end

  def show; end

  def new
    @project = Project.new
  end

  def edit; end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: "Project created successfully."
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project deleted."
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end

class IssuesController < ApplicationController
  before_action :set_project
  before_action :set_issue, only: %i[show edit update destroy]

  def index
    @issues = @project.issues.includes(:project)

    respond_to do |format|
      format.html
      format.xlsx do
        response.headers['Content-Disposition'] = "attachment; filename=issues_project_#{@project.id}.xlsx"
      end
      format.pdf do
        pdf_html = render_to_string(
          template: "issues/export_pdf",
          layout: 'pdf',                   # use the pdf layout
          locals: { issues: @issues, project: @project }  # pass both issues and project
        )
        pdf = WickedPdf.new.pdf_from_string(pdf_html)

        send_data pdf,
          filename: "issues_project_#{@project.id}.pdf",
          type: "application/pdf",
          disposition: "attachment"
      end
    end
  end

  def show; end

  def new
    @issue = @project.issues.new
  end

  def edit; end

  def create
    @issue = @project.issues.new(issue_params)
    if @issue.save
      redirect_to project_issue_path(@project, @issue), notice: "Issue created successfully."
    else
      render :new
    end
  end

  def update
    if @issue.update(issue_params)
      redirect_to project_issue_path(@project, @issue), notice: "Issue updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @issue.destroy
    redirect_to project_issues_path(@project), notice: "Issue deleted."
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_issue
    @issue = @project.issues.find(params[:id])
  end

  def issue_params
    params.require(:issue).permit(:title, :status, :priority)
  end
end

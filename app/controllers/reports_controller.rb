class ReportsController < ApplicationController
  def charts
    @issues_per_status = Issue.group(:status).count
    @issues_per_project = Project.includes(:issues).map { |project| [project.title, project.issues.count] }.to_h
  end
end

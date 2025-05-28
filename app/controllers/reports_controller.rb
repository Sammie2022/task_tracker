class ReportsController < ApplicationController
  def charts
    @issues_by_status = Issue.group(:status).count
    @issues_by_project = Issue.joins(:project).group("projects.title").count
  end
end

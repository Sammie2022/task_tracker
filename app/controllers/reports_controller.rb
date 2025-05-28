class ReportsController < ApplicationController
  def charts
    # Group issues count by status
    @issues_by_status = Issue.group(:status).count

    # Group issues count by project title
    @issues_by_project = Project.joins(:issues)
                                .group("projects.title")
                                .count("issues.id")
  end
end

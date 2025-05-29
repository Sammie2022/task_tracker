class ReportsController < ApplicationController
  def index
    @issues_by_status = Issue.group(:status).count

    @issues_by_project = Project.joins(:issues)
                                .group("projects.title")
                                .count("issues.id")
  end
end

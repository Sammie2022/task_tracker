require "test_helper"

class IssueTest < ActiveSupport::TestCase
  def setup
    @project = Project.create!(title: "Sample Project")
    @issue = Issue.new(title: "Test Issue", status: "New", priority: 3, project: @project)
  end

  test "valid issue" do
    assert @issue.valid?
  end

  test "invalid without title" do
    @issue.title = nil
    assert_not @issue.valid?
  end
end

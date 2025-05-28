json.extract! issue, :id, :title, :status, :priority, :project_id, :created_at, :updated_at
json.url issue_url(issue, format: :json)

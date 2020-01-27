json.extract! task, :id, :title, :position, :step_id, :created_at, :updated_at
json.url task_url(task, format: :json)

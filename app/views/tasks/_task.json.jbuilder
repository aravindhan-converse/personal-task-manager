json.extract! task, :id, :title, :description, :category, :status, :priority, :due_date, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)

json.extract! code_task, :id, :title, :description, :done, :user_id, :created_at, :updated_at
json.url code_task_url(code_task, format: :json)
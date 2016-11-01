json.extract! p_reminder, :id, :title, :description, :solution, :genus, :subgenus, :created_at, :updated_at
json.url p_reminder_url(p_reminder, format: :json)
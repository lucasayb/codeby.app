json.extract! task_category, :id, :title, :slug, :created_at, :updated_at
json.url task_category_url(task_category, format: :json)

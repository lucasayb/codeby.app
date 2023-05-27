json.extract! order, :id, :user_id, :amount, :proposal_id, :task_id, :created_at, :updated_at
json.url order_url(order, format: :json)

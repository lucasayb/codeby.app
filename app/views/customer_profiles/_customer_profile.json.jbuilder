json.extract! customer_profile, :id, :user_id, :name, :created_at, :updated_at
json.url customer_profile_url(customer_profile, format: :json)

json.extract! subscription, :id, :subscription_id, :user_id, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)

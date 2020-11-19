json.extract! order, :id, :customer_id, :date, :address, :comments, :status, :created_at, :updated_at
json.url order_url(order, format: :json)

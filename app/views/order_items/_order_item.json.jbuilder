json.extract! order_item, :id, :order_id, :item_id, :qunanty, :comment, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)

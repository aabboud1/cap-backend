json.extract! item, :id, :itemName, :price, :foodType, :qunanty, :created_at, :updated_at
json.url item_url(item, format: :json)

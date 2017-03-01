json.extract! order, :id, :amount_of_item, :cost, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)

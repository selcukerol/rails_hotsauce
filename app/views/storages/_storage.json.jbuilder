json.extract! storage, :id, :max_capacity, :cur_capacity, :created_at, :updated_at
json.url storage_url(storage, format: :json)

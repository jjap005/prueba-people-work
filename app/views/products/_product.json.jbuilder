json.extract! product, :id, :brand_id, :serial, :description, :price, :status, :created_at, :updated_at
json.url product_url(product, format: :json)

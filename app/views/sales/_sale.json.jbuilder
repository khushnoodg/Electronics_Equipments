json.extract! sale, :id, :date, :total_amount, :total_products, :created_at, :updated_at
json.url sale_url(sale, format: :json)

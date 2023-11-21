json.extract! bill, :id, :date, :total_amount, :total_products, :created_at, :updated_at
json.url bill_url(bill, format: :json)

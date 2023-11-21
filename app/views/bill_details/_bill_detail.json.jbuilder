json.extract! bill_detail, :id, :product_id, :quantity, :price_per_unit, :total_price, :bill_id, :created_at, :updated_at
json.url bill_detail_url(bill_detail, format: :json)

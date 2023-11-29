json.extract! saledetail, :id, :product_id, :sale_id, :quantity, :price_per_unit, :total_price, :created_at, :updated_at
json.url saledetail_url(saledetail, format: :json)

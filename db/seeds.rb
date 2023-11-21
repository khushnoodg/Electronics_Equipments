# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


p1 = Product.create(name: "Switch",quantity: "4",price: 900,category_id: 1)

b1= Bill.create(date:"12/23/2032",total_amount: 4677,total_products: 5)

bd1 = BillDetail.create(product_id: p1.id, quantity: 4, price_per_unit: 45,total_price: 400, bill_id: b1.id)
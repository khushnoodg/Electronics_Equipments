class CreateSaledetails < ActiveRecord::Migration[7.1]
  def change
    create_table :saledetails do |t|
      t.references :product, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true
      t.integer :quantity
      t.integer :price_per_unit
      t.integer :total_price

      t.timestamps
    end
  end
end

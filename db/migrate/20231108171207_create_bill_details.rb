class CreateBillDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :bill_details do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.integer :price_per_unit
      t.integer :total_price
      t.references :bill, null: false, foreign_key: true

      t.timestamps
    end
  end
end

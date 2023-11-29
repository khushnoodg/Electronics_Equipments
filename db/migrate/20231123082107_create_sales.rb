class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.date :date
      t.integer :total_amount
      t.integer :total_products

      t.timestamps
    end
  end
end

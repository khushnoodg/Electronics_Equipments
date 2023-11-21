class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills do |t|
      t.date :date
      t.integer :total_amount
      t.integer :total_products

      t.timestamps
    end
  end
end

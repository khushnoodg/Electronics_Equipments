class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :age
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end

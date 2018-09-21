class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :distance
      t.decimal :total
      t.integer :customer_id
      t.integer :truck_id

      t.timestamps
    end
  end
end

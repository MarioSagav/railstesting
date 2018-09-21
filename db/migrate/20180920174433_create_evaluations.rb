class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.string :description
      t.integer :note
      t.integer :customer_id
      t.integer :order_id

      t.timestamps
    end
  end
end

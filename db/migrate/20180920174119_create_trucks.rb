class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.string :brand
      t.integer :year
      t.string :specs
      t.string :avaible_days
      t.decimal :cost_x_km

      t.timestamps
    end
  end
end

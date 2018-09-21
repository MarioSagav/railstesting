class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :razonSocial
      t.string :nit
      t.string :direccion
      t.integer :telefono
      t.integer :fax
      t.string :sitioWeb

      t.timestamps
    end
  end
end

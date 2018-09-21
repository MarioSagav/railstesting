class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :apellido
      t.integer :telefono
      t.string :correoElectronico
      t.string :direccion

      t.timestamps
    end
  end
end

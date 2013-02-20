class CreateHistorials < ActiveRecord::Migration
  def change
    create_table :historials do |t|
      t.date :fecha_fabricacion
      t.date :fecha_venta
      t.date :fecha_devolucion
      t.string :empresa
      t.string :motivo
      t.integer :cantidad_toner
      t.string :mag_roller
      t.string :drum
      t.text :observaciones

      t.timestamps
    end
  end
end

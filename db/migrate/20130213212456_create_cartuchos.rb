class CreateCartuchos < ActiveRecord::Migration
  def change
    create_table :cartuchos do |t|
      t.string :codigo
      t.string :referencia
      t.date :fecha_ing
      t.string :estado

      t.timestamps
    end
  end
end

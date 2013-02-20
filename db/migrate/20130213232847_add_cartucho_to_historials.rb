class AddCartuchoToHistorials < ActiveRecord::Migration
  def change
    add_column :historials, :cartucho_id, :integer
  end
end

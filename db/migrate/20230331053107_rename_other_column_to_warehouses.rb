class RenameOtherColumnToWarehouses < ActiveRecord::Migration[6.0]
  def change
    rename_column :warehouses, :other, :w_other
  end
end

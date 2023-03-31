class RenamePhoneColumnToWPhone < ActiveRecord::Migration[6.0]
  def change
    rename_column :warehouses, :phone, :w_phone
  end
end

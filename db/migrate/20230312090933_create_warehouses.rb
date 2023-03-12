class CreateWarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses do |t|

      t.timestamps
      t.string :w_name, null: false
      t.string :w_postnum
      t.integer :prefecture_id, null: false
      t.string :w_address, null: false
      t.string :phone
      t.time :w_start_time
      t.time :w_close_time
      t.integer :w_stock_type_id
      t.text :rule
      t.text :other
    end
  end
end

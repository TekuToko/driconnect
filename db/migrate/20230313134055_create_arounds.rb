class CreateArounds < ActiveRecord::Migration[6.0]
  def change
    create_table :arounds do |t|

      t.timestamps
      t.string :a_name, null: false
      t.string :a_postnum
      t.integer :prefecture_id, null: false
      t.string :a_address, null: false
      t.string :a_phone
      t.time :a_start_time
      t.time :a_close_time
      t.text :a_rule
      t.text :a_other
    end
  end
end

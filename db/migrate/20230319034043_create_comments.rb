class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :monolog, null: false, foreign_key: true
      t.text :comment, null: false, foreign_key: true
      t.timestamps
    end
  end
end

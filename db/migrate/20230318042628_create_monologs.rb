class CreateMonologs < ActiveRecord::Migration[6.0]
  def change
    create_table :monologs do |t|
      t.text :monolog, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end

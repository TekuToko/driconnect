class RenameRuleColumnToWarehouses < ActiveRecord::Migration[6.0]
  def change
    rename_column :warehouses, :rule, :w_rule
  end
end

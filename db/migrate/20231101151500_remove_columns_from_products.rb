class RemoveColumnsFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :pre_order, :boolean
    remove_column :products, :order_id, :bigint
  end
end

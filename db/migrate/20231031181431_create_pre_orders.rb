class CreatePreOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :pre_orders do |t|

      t.timestamps
    end
  end
end

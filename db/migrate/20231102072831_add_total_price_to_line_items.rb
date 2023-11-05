class AddTotalPriceToLineItems < ActiveRecord::Migration[7.1]
  def change
    add_column :line_items, :total_price, :decimal, precision: 10, scale: 2
  end
end

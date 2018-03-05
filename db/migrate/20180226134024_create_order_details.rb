class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.integer :quantity, default: 1
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :total_price, :precision => 8, :scale => 2
      
      t.timestamps
    end
  end
end

class CreateLineOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :line_orders do |t|
      t.references :order, foreign_key: true
      t.references :pizza, foreign_key: true

      t.timestamps
    end
  end
end

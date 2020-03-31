class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
    	t.string :client
    	t.string :item
    	t.string :quantity
    	t.string :status
    	t.timestamps
    end
  end
end

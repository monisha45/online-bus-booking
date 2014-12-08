class CreateBillingDetails < ActiveRecord::Migration
  def change
    create_table :billing_details do |t|
    	t.integer :reservation_id
    	t.integer :user_id
    	t.string  :billing_type
    	t.string  :transaction_status

      t.timestamps
    end
  end
end

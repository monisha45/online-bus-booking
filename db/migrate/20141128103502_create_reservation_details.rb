class CreateReservationDetails < ActiveRecord::Migration
  def change
    create_table :reservation_details do |t|
    	t.integer :bus_id
    	t.integer :user_id
    	t.integer :no_of_persons
    	t.string  :gender
    	t.integer :total_price

      t.timestamps
    end
  end
end

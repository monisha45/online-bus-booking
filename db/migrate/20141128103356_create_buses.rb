class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
    	t.integer  :user_id
    	t.integer  :route_id
    	t.integer  :bus_type_id
    	t.integer  :no_of_seats_available
    	t.datetime :departure_time
    	t.datetime :arrival_time
    	t.integer  :ticket_price
    	t.date     :date_of_journey

      t.timestamps
    end
  end
end

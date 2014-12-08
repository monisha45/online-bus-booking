class Bus < ActiveRecord::Base
	belongs_to :route
	has_one :bus_type
	has_one :route
	#validates :user_id, :route_id, :bus_type_id, :bus_names, :no_of_seats_available, :departure_time, :arrival_time, :ticket_price, :date_of_journey, presence: true
end

class Route < ActiveRecord::Base
	has_many :buses
	validates :source, :destination, presence: true
end

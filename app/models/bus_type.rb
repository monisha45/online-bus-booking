class BusType < ActiveRecord::Base
	self.inheritance_column = nil
	belongs_to :bus

	validates :type, :description, presence: true
end

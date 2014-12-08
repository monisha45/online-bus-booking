class Role < ActiveRecord::Base

	validates :name, :descriptions, presence: true
end

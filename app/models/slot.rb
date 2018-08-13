class Slot < ApplicationRecord
	has_one :reservation
	has_one :table
	has_one :guest
end

class Table < ApplicationRecord
	has_many :reservations
	has_many :slots
end

class Reservation < ApplicationRecord
	validates_presence_of :table_id, :presence => true
    belongs_to :table
end

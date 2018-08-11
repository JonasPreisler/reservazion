class Reservation < ApplicationRecord
	validates_presence_of :table_id, :presence => true
	validates :time, :presence => true
	validates :date, :presence => true
	validates :guest, :presence => true
    belongs_to :table
	alias_attribute :messenger_user_id, :'messenger user id'
end

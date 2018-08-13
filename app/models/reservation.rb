class Reservation < ApplicationRecord
	validates :time, :presence => true
	validates :date, :presence => true
	validates :guest, :presence => true
	alias_attribute :messenger_user_id, :'messenger user id'
	belongs_to :slot

	def self.make_time_slots
			(0..6).each do |i|
				Table.all.each do |t|
					hour = "16:00".to_time
			    while hour < "22:00".to_time
						r = Reservation.new
						r.date = i.days.from_now.strftime("%Y-%m-%d")
						r.time = hour.strftime("%I:%M%p")
						r.table_id = t.id
						r.save(validate: false)
			        hour += 1800
			    end
			end
	    end
	end
end
class Slot < ApplicationRecord
	has_one :reservation
	has_one :table
	has_one :guest

 
 
	def self.make_time_slots
	    (0..28).each do |i|
	        hour = "16:00".to_time
	            while hour < "22:00".to_time
	                p "---i--#{i}----"
	                p "---date--#{i.days.from_now.strftime("%Y-%m-%d")}----"
	                p "---time--#{hour.strftime("%I:%M%p")}----"
	                s = Slot.new
	                s.date = i.days.from_now.strftime("%Y-%m-%d")
	                s.time = hour.strftime("%I:%M%p")
	                s.save(validate: false)
	                hour += 1800
	            end
	        end
	    end
	end
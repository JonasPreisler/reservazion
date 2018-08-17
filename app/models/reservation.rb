class Reservation < ApplicationRecord
	validates :guest, :presence => true
	alias_attribute :messenger_user_id, :'messenger user id'
	belongs_to :slot
    paginates_per 40
    belongs_to :user

end
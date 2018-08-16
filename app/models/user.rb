class User < ApplicationRecord
    devise :database_authenticatable, :registerable, :confirmable,
           :recoverable, :rememberable, :trackable, :validatable
    has_one :business
	validate :email_domain


	def email_domain
		domain = email.split("@").last
		if !email.blank?
		  errors.add(:email, "Invalid Domain") if domain != "copona.no" and domain != "jonaspreisler.com"
		end
	end


end

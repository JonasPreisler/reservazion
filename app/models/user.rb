class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
    has_one :business
    has_many :reservations

end

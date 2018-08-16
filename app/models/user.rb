class User < ApplicationRecord
    devise :database_authenticatable, :registerable, :confirmable,
           :recoverable, :rememberable, :trackable, :validatable
    has_one :business

end

class Place < ActiveRecord::Base
	has_many :users
	validates :name, :adress, :phone, presence: true
end

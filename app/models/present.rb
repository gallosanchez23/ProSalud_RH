class Present < ActiveRecord::Base
	has_many :user_presents
	has_many :users, :through => :user_presents
	validates :name, :points, presence: true
end
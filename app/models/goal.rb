class Goal < ActiveRecord::Base
	#types:
	#1 => Individual
	#2 => Grupal
	has_many :user_goals
	has_many :users, :through => :user_goals
	validates :name, :start_date, :end_date, :type, presence: true
end

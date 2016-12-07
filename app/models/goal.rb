class Goal < ActiveRecord::Base
	#types:
	#0 => Individual
	#1 => Grupal
	has_many :user_goals
	has_many :users, :through => :user_goals
	validates :name, :start_date, :end_date, :goal_type, presence: true
  enum type: [:individual, :grupal]
end

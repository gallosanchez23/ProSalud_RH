class UserGoal < ActiveRecord::Base

	#Options for progress
	#0 new
	#1 in_progress
	#2 finished

  belongs_to :user
  belongs_to :goal
  validates :user_id, :goal_id, presence: true
end

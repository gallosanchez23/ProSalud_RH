class AddRecordsAndDefaultValuesToUserGoals < ActiveRecord::Migration
  def change

  	#Create new user goals records
  	newUserGoals = [
  		{ user_id: 1, goal_id: 1, progress: 0 },
  		{ user_id: 1, goal_id: 2, progress: 1 },
  		{ user_id: 1, goal_id: 3, progress: 2 }
  	]

  	newUserGoals.each do |user_goal|
  		UserGoal.create(user_goal)
  	end

  	#Set default values on user_goals table
  	change_column :user_goals, :progress, :integer, :default => 0

  end
end

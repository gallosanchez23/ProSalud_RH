class AddGoalTypeToGoals < ActiveRecord::Migration
  def change

  	#Rename type column as goal_type column on goals table
  	rename_column :goals, :type, :goal_type

  end
end
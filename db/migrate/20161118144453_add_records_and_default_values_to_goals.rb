class AddRecordsAndDefaultValuesToGoals < ActiveRecord::Migration
  def change

  	#Creates new registers at goals table
  	newGoals = [
  		{ name: 'Meta Administrativa Inicial', start_date: '2016-11-18', end_date: '2016-11-25', goal_type: 1 },
  		{ name: 'Meta Administrativa En progreso', start_date: '2016-11-18', end_date: '2016-11-25', goal_type: 1 },
  		{ name: 'Meta Administrativa Finalizada', start_date: '2016-11-18', end_date: '2016-11-25', goal_type: 1 }
  	]

  	newGoals.each do |goal|
  		Goal.create(goal)
  	end

  	#Set default values for the table goals
  	change_column :goals, :start_date, :date, :default => Date.today.to_s
  	change_column :goals, :end_date, :date, :default => Date.today.to_s
  	change_column :goals, :goal_type, :integer, :default => 1

  end
end

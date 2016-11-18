class SetDefaultValuesOnUsersAndGoals < ActiveRecord::Migration
  def change

  	#Users
  	change_column :users, :start_date, :date, :default => Date.today.to_s
  	change_column :users, :status, :boolean, :default => true
  	change_column :users, :points, :integer, :default => 0
  	change_column :users, :role_id, :integer, :default => 4

  	#Goals
  	change_column :goals, :start_date, :date, :default => Date.today.to_s
  	change_column :goals, :type, :integer, :default => 1

  end
end

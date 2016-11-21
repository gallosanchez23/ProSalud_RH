class AddRecordsAndDefaultValuesToPresents < ActiveRecord::Migration
  def change

  	#Creates new present at database
  	newPresents = [
  		{ name: 'Regalo 1', points: 10 },
  		{ name: 'Regalo 2', points: 50 },
  		{ name: 'Regalo 3', points: 100 }
  	]

  	newPresents.each do |present|
  		Present.create(present)
  	end

  	#Set default values for table presents
  	change_column :presents, :points, :integer, :default => 0

  end
end

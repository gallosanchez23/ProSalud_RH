class AddRecordsAndDefaultValuesToPlaces < ActiveRecord::Migration
  def change

  	#Creates new place at database
  	Place.create({ name: 'Base Administrativa', adress: 'Base Administrativa', phone: '0000000000' })  	

  	#Set default values for the table
  	change_column :places, :phone, :string, :default => '0000000000'

  end
end

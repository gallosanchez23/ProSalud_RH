class AddRecordsAndDefaultValuesToRoles < ActiveRecord::Migration
  def change

  	#Creates new roles at table
  	newRoles = [
  		{name: 'Maestra'},
  		{name: 'Supervisor'},
  		{name: 'Administrador'},
  		{name: 'Colaborador'}
  	]

  	newRoles.each do |role|
  		Role.create(role)
  	end

  end
end

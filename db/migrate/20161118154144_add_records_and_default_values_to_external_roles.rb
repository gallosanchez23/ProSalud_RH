class AddRecordsAndDefaultValuesToExternalRoles < ActiveRecord::Migration
  def change

  	#Creates new external roles at table
  	newExternalRoles = [
  		{name: 'Director General'},
  		{name: 'Director de Voluntariado'},
  		{name: 'Director Comercial'},
  		{name: 'Coordinador de Voluntariado'},
  		{name: 'Voluntario'}
  	]

  	newExternalRoles.each do |role|
  		ExternalRole.create(role)
  	end

  end
end

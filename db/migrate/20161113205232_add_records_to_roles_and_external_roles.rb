class AddRecordsToRolesAndExternalRoles < ActiveRecord::Migration
  def change

  	newRoles = [
  		{name: 'Maestra'},
  		{name: 'Supervisor'},
  		{name: 'Administrador'},
  		{name: 'Colaborador'}
  	]

  	newRoles.each do |role|
  		Role.create(role)
  	end

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

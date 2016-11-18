class AddRecordsToPlacesAndUsers < ActiveRecord::Migration
  def change

  	#Create new administration place
  	Place.create({name: 'Admin', adress: 'Admin', phone: 'Admin'})

  	#Create master account
  	User.create({name: 'Admin',
  							 last_name: 'ProSalud',
  							 user_name: 'prosalud_admin@prosalud.com',
  							 password: 'prosalud_admin',
  							 adress: 'Admin',
  							 email: 'prosalud_admin@prosalud.com',
  							 favorite_cake: 'Admin',
  							 curp: 'Admin',
  							 role_id: 1,
  							 external_role_id: 1,
  							 user_id: 1,
  							 place_id: 1})

  end
end

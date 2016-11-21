class AddRecordsAndDefaultValuesToUsers < ActiveRecord::Migration
  def change

  	#Creates new users record
    User.create(name: 'ProSalud',
                lastname: 'Admin',
                username: 'prosalud.admin@prosalud.com',
                password: 'prosalud.admin',
                adress: 'ProSalud adress',
                email: 'prosalud.admin@prosalud.com',
                favorite_cake: 'Admin',
                curp: 'Admin',
                rfc: 'Admin',
                role_id: 1,
                external_role_id: 1,
                user_id: 1,
                place_id: 1)

  	#Set default values for users
  	change_column :users, :start_date, :date, :default => Date.today.to_s
  	change_column :users, :status, :boolean, :default => true
  	change_column :users, :points, :integer, :default => 0
  	change_column :users, :role_id, :integer, :default => 4

  end
end

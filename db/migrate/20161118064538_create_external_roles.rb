class CreateExternalRoles < ActiveRecord::Migration
  def change
    create_table :external_roles do |t|
      t.string :name
    end
  end
end

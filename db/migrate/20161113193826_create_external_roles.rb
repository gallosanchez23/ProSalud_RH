class CreateExternalRoles < ActiveRecord::Migration
  def change
    create_table :external_roles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

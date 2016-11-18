class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :user_name
      t.string :password
      t.string :adress
      t.string :phone
      t.string :email
      t.string :favorite_cake
      t.string :photo
      t.string :curp
      t.string :rfc
      t.date :start_date
      t.integer :antique
      t.boolean :status
      t.text :comments
      t.integer :points
      t.references :role, index: true, foreign_key: true
      t.references :external_role, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

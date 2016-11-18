class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :type

      t.timestamps null: false
    end
  end
end

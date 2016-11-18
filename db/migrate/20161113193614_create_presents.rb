class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.string :name
      t.text :description
      t.integer :points
      t.string :photo

      t.timestamps null: false
    end
  end
end

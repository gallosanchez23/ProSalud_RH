class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.string :name
      t.text :description
      t.integer :points
      t.string :photo
    end
  end
end

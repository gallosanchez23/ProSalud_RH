class CreateUserGoals < ActiveRecord::Migration
  def change
    create_table :user_goals do |t|
      t.references :user, index: true
      t.references :goal, index: true
      t.integer :progress
      t.text :comments
    end
  end
end

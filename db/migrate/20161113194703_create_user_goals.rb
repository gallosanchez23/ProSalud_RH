=begin

------------------ run first ----------------------

class CreateUserPresents < ActiveRecord::Migration
  def change
    create_table :user_presents do |t|
      t.references :user, index: true, foreign_key: true
      t.references :present, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

=end

class CreateUserGoals < ActiveRecord::Migration
  def change
    create_table :user_goals do |t|
      t.references :user, index: true, foreign_key: true
      t.references :goal, index: true, foreign_key: true
      t.integer :progress
      t.text :comments

      t.timestamps null: false
    end
  end
end

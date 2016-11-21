class CreateUserPresents < ActiveRecord::Migration
  def change
    create_table :user_presents do |t|
      t.references :user, index: true
      t.references :present, index: true
    end
  end
end

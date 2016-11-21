class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :adress
      t.string :phone
      t.string :photo
    end
  end
end

class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :locaton
      t.string :cuisine

      t.timestamps
    end
  end
end
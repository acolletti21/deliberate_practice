class ChangeLocatonToLocation < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :locaton, :location
  end
end

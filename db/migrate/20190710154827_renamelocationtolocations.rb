class Renamelocationtolocations < ActiveRecord::Migration[5.0]
  def change
    rename_table :location, :locations
  end
end

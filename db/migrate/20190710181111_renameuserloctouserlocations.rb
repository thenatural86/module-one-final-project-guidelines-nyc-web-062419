class Renameuserloctouserlocations < ActiveRecord::Migration[5.0]
  def change
    rename_table :user_loc, :user_locations
  end
end

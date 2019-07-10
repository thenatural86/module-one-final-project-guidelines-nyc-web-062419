class CreateUserLocation < ActiveRecord::Migration[5.0]
  def change
    create_table :user_loc do |t|
      t.integer :user_id
      t.integer :location_id
    end
  end
end

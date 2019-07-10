class CreateLocation < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.float :temp
      t.string :main
      t.string :description
    end
  end
end

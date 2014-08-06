class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.text :description
      t.text :location

      t.timestamps
    end
  end
end

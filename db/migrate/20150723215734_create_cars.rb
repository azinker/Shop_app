class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :condition
      t.string :image

      t.timestamps null: false
    end
  end
end

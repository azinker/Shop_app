class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :brand
      t.string :color
      t.string :condition
      t.string :image

      t.timestamps null: false
    end
  end
end

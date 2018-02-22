class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.references :restaurant, foreign_key: true, null: false
      t.string :name, null: false
      t.string :course, null: false
      t.string :description

      t.timestamps
    end
  end
end

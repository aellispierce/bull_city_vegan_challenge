class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :dish, foreign_key: true, null: false
      t.integer :score, null: false
      t.text :review

      t.timestamps
    end
  end
end

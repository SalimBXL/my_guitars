class CreateGuitars < ActiveRecord::Migration[7.1]
  def change
    create_table :guitars do |t|
      t.references :model, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.text :description
      t.string :series_number
      t.date :purchase_date
      t.integer :purchase_year, null: false
      t.boolean :second_hand, default: false
      t.string :shop_name
      t.string :picture

      t.timestamps
    end
  end
end

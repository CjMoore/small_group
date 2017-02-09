class CreateItem < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.string :description
      t.integer :cost
      t.references :store, foreign_key: true

      t.timestamps null: false
    end
  end
end

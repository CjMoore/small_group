class CreateStore < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :location

      t.timestamps null: false
    end
  end
end

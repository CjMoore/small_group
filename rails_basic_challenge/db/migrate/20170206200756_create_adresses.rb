class CreateAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :student, foreign_key: true
      t.integer :number
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end

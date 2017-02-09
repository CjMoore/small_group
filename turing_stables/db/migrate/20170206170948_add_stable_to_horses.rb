class AddStableToHorses < ActiveRecord::Migration[5.0]
  def change
    add_reference :horses, :stable, foreign_key: true
  end
end

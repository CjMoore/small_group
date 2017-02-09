class AddIsAlumnusToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :is_alumnus, :boolean, :default => false
  end
end

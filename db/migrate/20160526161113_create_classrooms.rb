class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :teacher_id
      t.integer :student_id
      t.string :name
      t.timestamps
    end
    add_index :classrooms, :teacher_id
    add_index :classrooms, :student_id
    add_index :classrooms, [:teacher_id, :student_id], unique: true
  end
end

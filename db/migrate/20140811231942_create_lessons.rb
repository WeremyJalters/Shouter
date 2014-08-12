class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :student_id
      t.string :note
      t.boolean :present
      t.datetime :cal_date
      t.integer :lesson_number

      t.timestamps
    end
  end
end

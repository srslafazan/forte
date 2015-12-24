class CreateStudentLessonPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :student_lesson_preferences do |t|
      t.references :student, index: true, foreign_key: true

      t.timestamps
    end
  end
end

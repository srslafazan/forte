class CreateTutorLessonPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :tutor_lesson_preferences do |t|
      t.references :tutor, index: true, foreign_key: true

      t.timestamps
    end
  end
end

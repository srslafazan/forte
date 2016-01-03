class CreateStudentAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :student_availabilities do |t|
      
      t.references :student, index: true, foreign_key: true
      t.references :time_block, index: true, foreign_key: true

      t.timestamps
    end
  end
end

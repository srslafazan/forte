class CreateMentorships < ActiveRecord::Migration[5.0]
  def change
    create_table :mentorships do |t|
      
      t.references :student, index: true, foreign_key: true
      t.references :tutor, index: true, foreign_key: true
      t.references :address, index: true, foreign_key: true

      t.timestamps
    end
  end
end

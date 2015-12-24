class CreateMentorshipOfferings < ActiveRecord::Migration[5.0]
  def change
    create_table :mentorship_offerings do |t|
      t.references :mentorship, index: true, foreign_key: true
      t.references :offering, index: true, foreign_key: true

      t.timestamps
    end
  end
end

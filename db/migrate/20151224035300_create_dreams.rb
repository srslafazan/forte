class CreateDreams < ActiveRecord::Migration[5.0]
  def change
    create_table :dreams do |t|
      t.references :student, index: true, foreign_key: true
      t.references :skill_level, index: true, foreign_key: true
      t.references :instrument, index: true, foreign_key: true

      t.timestamps
    end
  end
end

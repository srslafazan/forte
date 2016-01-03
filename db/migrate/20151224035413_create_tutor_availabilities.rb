class CreateTutorAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :tutor_availabilities do |t|
      
      t.references :tutor, index: true, foreign_key: true
      t.references :time_block, index: true, foreign_key: true

      t.timestamps
    end
  end
end

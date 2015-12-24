class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :tutor, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps
    end
  end
end

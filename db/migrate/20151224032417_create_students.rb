class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|

    	t.references :address, index: true, foreign_key: true

      t.timestamps
    end
  end
end

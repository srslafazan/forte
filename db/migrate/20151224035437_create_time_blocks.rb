class CreateTimeBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :time_blocks do |t|

      t.timestamps
    end
  end
end

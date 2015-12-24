class CreateSkillLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_levels do |t|

      t.timestamps
    end
  end
end

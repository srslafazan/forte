class AddAvatarColumnsToStudents < ActiveRecord::Migration[5.0]
  def up
    add_attachment :students, :avatar
  end

  def down
    remove_attachment :students, :avatar
  end
end
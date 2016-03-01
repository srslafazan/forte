class AddAvatarColumnsToTutors < ActiveRecord::Migration[5.0]
  def up
    add_attachment :tutors, :avatar
  end

  def down
    remove_attachment :tutors, :avatar
  end
end

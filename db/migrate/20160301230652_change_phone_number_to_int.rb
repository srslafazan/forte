class ChangePhoneNumberToInt < ActiveRecord::Migration[5.0]
  def change
  	change_column :students, :phone_number, :integer
  	add_column :students, :application_status, :string, :default => "pending"
  end
end
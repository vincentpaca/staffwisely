class ChangeColumnTypesForEmployees < ActiveRecord::Migration
  def change
    change_column :employees, :skill_level, :string
    change_column :employees, :tenure, :string
    change_column :employees, :experience, :string
  end
end

class ChangeAvailabilityForEmployees < ActiveRecord::Migration
  def change
    rename_column :employees, :available, :availability
    change_column :employees, :availability, :string
  end
end

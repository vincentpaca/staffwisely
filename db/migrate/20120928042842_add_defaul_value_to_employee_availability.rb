class AddDefaulValueToEmployeeAvailability < ActiveRecord::Migration
  def change
    change_column :employees, :availability, :string, :default => "Available"
  end
end

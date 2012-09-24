class AddAvailableToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :available, :boolean
  end
end

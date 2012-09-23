class AddRateToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :rate, :integer
  end
end

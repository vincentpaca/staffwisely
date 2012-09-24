class AddTenureToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :tenure, :integer
  end
end

class AddProjectDurationToEmployess < ActiveRecord::Migration
  def change
    add_column :employees, :project_duration, :integer
  end
end

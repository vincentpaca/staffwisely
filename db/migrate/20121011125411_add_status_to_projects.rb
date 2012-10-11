class AddStatusToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_status, :string, :default => "pending"
  end
end

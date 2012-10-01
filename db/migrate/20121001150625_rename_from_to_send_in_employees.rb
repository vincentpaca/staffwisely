class RenameFromToSendInEmployees < ActiveRecord::Migration
  def change
    rename_column :notifications, :from, :sender_id
  end
end

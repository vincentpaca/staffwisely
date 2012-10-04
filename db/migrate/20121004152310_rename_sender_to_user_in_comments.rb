class RenameSenderToUserInComments < ActiveRecord::Migration
  def change
    rename_column :comments, :sender_id, :user_id
  end
end

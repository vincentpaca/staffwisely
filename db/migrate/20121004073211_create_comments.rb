class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :project_id
      t.integer :sender_id
      t.text :message
      t.boolean :event

      t.timestamps
    end
  end
end

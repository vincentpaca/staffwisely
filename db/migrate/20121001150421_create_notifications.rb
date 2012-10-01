class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :company_id
      t.string :message
      t.boolean :read
      t.integer :from

      t.timestamps
    end
  end
end

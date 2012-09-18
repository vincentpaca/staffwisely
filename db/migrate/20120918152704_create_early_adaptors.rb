class CreateEarlyAdaptors < ActiveRecord::Migration
  def change
    create_table :early_adaptors do |t|
      t.string :email

      t.timestamps
    end
  end
end

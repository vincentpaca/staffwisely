class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :continent_id
      t.string :iso
      t.string :name

      t.timestamps
    end
  end
end

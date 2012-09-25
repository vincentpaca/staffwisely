class CreateContinents < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :iso
      t.string :name

      t.timestamps
    end
  end
end

class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :company_id
      t.integer :added_by
      t.string :location
      t.string :position
      t.integer :category
      t.integer :experience
      t.integer :skill_level

      t.timestamps
    end
  end
end

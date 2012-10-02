class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :employer_id
      t.integer :employee_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

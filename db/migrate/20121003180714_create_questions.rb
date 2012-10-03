class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :type
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

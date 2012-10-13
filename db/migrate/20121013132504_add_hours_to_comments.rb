class AddHoursToComments < ActiveRecord::Migration
  def change
    add_column :comments, :hours, :integer
  end
end

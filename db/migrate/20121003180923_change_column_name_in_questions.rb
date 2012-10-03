class ChangeColumnNameInQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :type, :faq_type
  end
end

class AddColumnToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :question_type_id, :integer
  end
end

class FixColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :question_types, :questions_id, :question_id
  end
end

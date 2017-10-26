class FixSurveyColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :surveys, :questions_id, :question_id
  end
end

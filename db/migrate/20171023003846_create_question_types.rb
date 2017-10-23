class CreateQuestionTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :question_types do |t|
      t.string :question_type
      t.integer :questions_id

      t.timestamps
    end
  end
end

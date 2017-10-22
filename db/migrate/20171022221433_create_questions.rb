class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :type
      t.boolean :required
      t.integer :survey_id
      t.integer :options_num

      t.timestamps
    end
  end
end

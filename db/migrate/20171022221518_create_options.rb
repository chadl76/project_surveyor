class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :question_id
      t.string :response
      t.string :user_answer

      t.timestamps
    end
  end
end

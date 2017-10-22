class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :title
      t.string :description
      t.integer :count
      t.integer :questions_id

      t.timestamps
    end
  end
end

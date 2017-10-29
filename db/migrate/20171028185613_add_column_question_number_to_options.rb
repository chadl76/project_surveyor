class AddColumnQuestionNumberToOptions < ActiveRecord::Migration[5.0]
  def change
  	add_column :options, :options_num, :integer
  end
end

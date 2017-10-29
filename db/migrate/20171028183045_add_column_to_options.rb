class AddColumnToOptions < ActiveRecord::Migration[5.0]
  def change
  	add_column :options, :survey_id, :integer
  end
end

class AddOptionIdColumunToQuestion < ActiveRecord::Migration[5.0]
  def change
  	add_column :questions, :option_id, :integer 
  end
end

class RemoveColumnFromQuestion < ActiveRecord::Migration[5.0]
  def change
  	remove_column :questions, :option_id
  end
end

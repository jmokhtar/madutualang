class AddColumnToCustomer < ActiveRecord::Migration
  def change
	add_column :customers, :agent_id, :integer
  end
end

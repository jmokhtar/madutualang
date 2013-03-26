class AddColumnToAgent < ActiveRecord::Migration
  def change
	add_column :agents, :poskod, :string
  end
end

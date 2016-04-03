class AddPriorityToUser < ActiveRecord::Migration
  def change
  	add_column :users, :priority, :text
  end
end

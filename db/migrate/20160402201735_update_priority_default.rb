class UpdatePriorityDefault < ActiveRecord::Migration
  def change
  	change_column :users, :priority, :text, :default => "none"
  end
end

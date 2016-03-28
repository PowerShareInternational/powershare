class RevertIndexNames < ActiveRecord::Migration
  def change
  	remove_index :users, :community_name
  	add_column :users, :community_id, :integer
  	add_index :users, :community_id
  end
end

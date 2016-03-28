class RemoveCommunitiesTable < ActiveRecord::Migration
  def change
  	remove_index :users, :community_id
  	remove_column :users, :community_id
  	remove_column :users, :community_name
  	add_column :users, :community, :text
  end
end

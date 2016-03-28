class UpdatingCommunityForeignKey < ActiveRecord::Migration
  def change
  	remove_index :users, :community_id
  	add_column :users, :community_name, :text
  	add_index :users, :community_name
  end
end

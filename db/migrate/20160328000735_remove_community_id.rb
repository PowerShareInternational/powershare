class RemoveCommunityId < ActiveRecord::Migration
  def change
  	remove_column :users, :community_id
  end
end

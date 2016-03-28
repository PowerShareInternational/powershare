class SetupCommunityRelations < ActiveRecord::Migration
  def change
  	remove_column :users, :community
  	add_reference :users, :community, index: true
  end
end

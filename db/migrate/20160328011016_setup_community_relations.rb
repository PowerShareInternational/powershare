class SetupCommunityRelations < ActiveRecord::Migration
  def change
  	add_reference :users, :community, index: true
  end
end

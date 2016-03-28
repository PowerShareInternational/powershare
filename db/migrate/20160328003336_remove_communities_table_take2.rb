class RemoveCommunitiesTableTake2 < ActiveRecord::Migration
  def change
  	drop_table :communities
  end
end

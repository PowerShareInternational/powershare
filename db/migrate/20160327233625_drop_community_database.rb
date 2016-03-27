class DropCommunityDatabase < ActiveRecord::Migration
  def change
  	drop_table :communities
  end
end

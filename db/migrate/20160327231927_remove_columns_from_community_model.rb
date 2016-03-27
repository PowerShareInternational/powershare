class RemoveColumnsFromCommunityModel < ActiveRecord::Migration
  def change
  	remove_column :communities, :city
  	remove_column :communities, :state
  end
end

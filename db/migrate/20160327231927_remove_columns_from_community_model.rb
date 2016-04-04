class RemoveColumnsFromCommunityModel < ActiveRecord::Migration
  def change
  	add_column :communities, :city, :text
  	add_column :communities, :state, :text
  	remove_column :communities, :city
  	remove_column :communities, :state
  end
end

class UpdateCommunityColumns < ActiveRecord::Migration
  def change
  	remove_column :communities, :city
  	remove_column :communities, :state
  	remove_column :communities, :country
  	add_column :communities, :name, :text
  end
end

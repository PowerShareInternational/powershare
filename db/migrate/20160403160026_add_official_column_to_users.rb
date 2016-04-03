class AddOfficialColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :official, :boolean, default: false
  	add_column :users, :title, :text
  end
end

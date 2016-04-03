class AddDefaultToGoalContent < ActiveRecord::Migration
  def change
  	change_column :microposts, :content, :text, :default => "empty"
  end
end

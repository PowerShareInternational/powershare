class AddDefaultValueForVotes < ActiveRecord::Migration
  def change
  	change_column_default :microposts, :votes, 0
  end
end

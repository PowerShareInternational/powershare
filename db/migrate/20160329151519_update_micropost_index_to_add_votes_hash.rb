class UpdateMicropostIndexToAddVotesHash < ActiveRecord::Migration
  def change
  	add_index :microposts, :votes
  end
end

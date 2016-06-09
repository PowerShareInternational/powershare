class RemoveOfficialDefault < ActiveRecord::Migration
  def change
  	change_column_default :users, :official, nil
  end
end

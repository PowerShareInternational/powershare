class MicropostDefaults < ActiveRecord::Migration
  def change
  	change_column_default :microposts, :achieved, false
  	change_column_default :microposts, :approved, false
  end
end

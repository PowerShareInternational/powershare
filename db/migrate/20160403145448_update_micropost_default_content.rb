class UpdateMicropostDefaultContent < ActiveRecord::Migration
  def change
  	change_column :microposts, :content, :text, :default => ""
  end
end

class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.text :name
      t.text :city
      t.text :state

      t.timestamps null: false
    end
  end
end

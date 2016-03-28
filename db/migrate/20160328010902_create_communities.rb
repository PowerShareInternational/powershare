class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.text :city
      t.text :state
      t.text :country

      t.timestamps null: false
    end
  end
end

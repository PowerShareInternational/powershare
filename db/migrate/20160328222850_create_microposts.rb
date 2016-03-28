class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.text :content
      t.text :description
      t.text :measurement
      t.date :achieved_by
      t.integer :votes
      t.boolean :achieved
      t.boolean :approved
      t.text :responses
      t.references :user, index: true, foreign_key: true
      t.references :community, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

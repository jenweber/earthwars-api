class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.integer :value
      t.string :challenge
      t.references :user, index: true, foreign_key: true
      t.references :organization, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

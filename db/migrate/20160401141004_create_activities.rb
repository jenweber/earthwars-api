class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category
      t.string :value
      t.string :challenge
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

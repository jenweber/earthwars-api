class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :contact
      t.string :goal
      t.timestamps null: false
    end
  end
end

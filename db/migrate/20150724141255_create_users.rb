#
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :name
      t.string :admin
      t.references :organization, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

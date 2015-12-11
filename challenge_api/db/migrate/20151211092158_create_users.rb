class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null =>false, :limit =>100
      t.string :password, :null =>false, :limit =>100
      t.string :email, :null =>false, :limit =>100, :unique =>true
      t.date :birthday
      t.string :company, :limit =>50
      t.string :location, :limit =>50

      t.timestamps null: false
    end
    add_index :users, :email, :unique => true
  end
end

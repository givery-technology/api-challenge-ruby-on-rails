class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.date :birthday
      t.string :company
      t.string :location

      t.timestamps null: false
    end
  end
end

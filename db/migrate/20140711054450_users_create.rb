class UsersCreate < ActiveRecord::Migration
 def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :surname
      t.date :bdate
      t.string :mobnum
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end

class Addsurname < ActiveRecord::Migration
  def change
    add_column :alerts , :surname , :string
  end
end

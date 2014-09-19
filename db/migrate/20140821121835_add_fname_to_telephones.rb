class AddFnameToTelephones < ActiveRecord::Migration
  def change
    add_column :telephones, :fname, :string  
  end
end

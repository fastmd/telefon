class AddEmailToTelephones < ActiveRecord::Migration
  def change
      add_column :telephones, :email, :string  
  end
end

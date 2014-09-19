class Addcolumn < ActiveRecord::Migration
  def change
    add_column :alerts, :system, :string  
  end
end

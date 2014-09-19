class AddFioDiag < ActiveRecord::Migration
  def change
     add_column :alerts, :fio_diag, :string  
  end
end

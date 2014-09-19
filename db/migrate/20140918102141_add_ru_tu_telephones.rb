class AddRuTuTelephones < ActiveRecord::Migration
  def change
    
    add_column :telephones, :snameru, :string
    add_column :telephones, :nameru, :string
    add_column :telephones, :fnameru, :string
    add_column :telephones, :companyru, :string
    add_column :telephones, :serviceru, :string
    add_column :telephones, :otdelru, :string
    add_column :telephones, :doljru, :string
    
  end
end

class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :sname
      t.string :name
      t.string :company
      t.string :service
      t.string :dolj
      t.string :rtel
      t.string :ltel
      t.string :mtel
      t.timestamps
    end
  end
end

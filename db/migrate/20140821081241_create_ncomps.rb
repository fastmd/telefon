class CreateNcomps < ActiveRecord::Migration
  def change
    create_table :ncomps do |t|

      t.timestamps
    end
  end
end

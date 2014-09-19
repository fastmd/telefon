class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :data
      t.string :dev
      t.string :worktype
      t.string :desc
      t.string :name
      t.string :sygn

      t.timestamps
    end
  end
end

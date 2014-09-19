class CrNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :tel
      t.text :text
      t.references :telephone

      t.timestamps
    end
  end
end

class CreateCoffs < ActiveRecord::Migration
  def change
    create_table :coffs do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end

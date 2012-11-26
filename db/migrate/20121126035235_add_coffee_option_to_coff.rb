class AddCoffeeOptionToCoff < ActiveRecord::Migration
  def change
    add_column :coffs, :option, :string
  end
end

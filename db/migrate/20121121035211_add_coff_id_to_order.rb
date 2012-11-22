class AddCoffIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :coff_id, :integer
  end
end

class AddTypeToCoff < ActiveRecord::Migration
  def change
    add_column :coffs, :kind, :string
  end
end

class AddCoffeeCommentToCoff < ActiveRecord::Migration
  def change
    add_column :coffs, :comment, :string
  end
end

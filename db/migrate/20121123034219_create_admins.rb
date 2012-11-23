class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :dashboard

      t.timestamps
    end
  end
end

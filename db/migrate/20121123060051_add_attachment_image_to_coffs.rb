class AddAttachmentImageToCoffs < ActiveRecord::Migration
  def self.up
    change_table :coffs do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :coffs, :image
  end
end

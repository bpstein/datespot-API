class AddAttachmentImageToDatespots < ActiveRecord::Migration[5.1]
  def self.up
    change_table :datespots do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :datespots, :image
  end
end

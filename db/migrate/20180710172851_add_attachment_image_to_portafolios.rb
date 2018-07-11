class AddAttachmentImageToPortafolios < ActiveRecord::Migration[5.2]
  def self.up
    change_table :portafolios do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :portafolios, :image
  end
end

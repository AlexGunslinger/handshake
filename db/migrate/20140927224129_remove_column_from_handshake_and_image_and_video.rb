class RemoveColumnFromHandshakeAndImageAndVideo < ActiveRecord::Migration
  def change
  	remove_column	:handshakes, :tips, :text
  	remove_column :videos, :description, :string
  	remove_column :images, :description, :text
  end
end

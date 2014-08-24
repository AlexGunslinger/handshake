class CreateHandshakes < ActiveRecord::Migration
  def change
    create_table :handshakes do |t|
    	t.string :name
      t.text :text
      t.string :handshake_url
      t.integer :user_id

      t.timestamps
    end
  end
end

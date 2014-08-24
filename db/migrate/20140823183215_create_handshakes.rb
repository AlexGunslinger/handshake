class CreateHandshakes < ActiveRecord::Migration
  def change
    create_table :handshakes do |t|
    	t.string :name
      t.text :description
      t.text :tips
      t.integer :user_id

      t.timestamps
    end
  end
end

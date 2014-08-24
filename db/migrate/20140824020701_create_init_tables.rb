class CreateInitTables < ActiveRecord::Migration
  def change
  	create_table(:aliases) do |t|
  		t.string :name
  	  t.timestamps
  	end

  	create_table(:users) do |t|
  	  t.string :login, null: false, default: ""
  	  t.string :email, null: false, default: ""
  	  t.string :encrypted_password, null: false, default: ""

	 	  t.string   :reset_password_token
  	  t.datetime :reset_password_sent_at

  	  t.datetime :remember_created_at

  	  t.integer  :sign_in_count, default: 0, null: false
  	  t.datetime :current_sign_in_at
  	  t.datetime :last_sign_in_at
  	  t.string   :current_sign_in_ip
  	  t.string   :last_sign_in_ip

  	  t.timestamps
  	end

  	create_table(:handshakes_aliases) do |t|
  		t.integer :alias_id
  		t.integer :integer_id
  	end

  	create_table(:images) do |t|
  		t.string :type
  		t.text :description
  		t.integer :handshake_id
  	end

  	create_table(:videos) do |t|
  		t.string :description
  		t.string :url
  		t.integer :handshake_id
  	end

  	create_table(:tags) do |t|
  		t.string :name
  		t.integer :level
  		t.integer :parent_id
  	end

  	create_table(:handshakes_tags) do |t|
  		t.integer :handshake_id
  		t.integer :tag_id
  		t.integer :level
  	end

  end
end

class CreateShakes < ActiveRecord::Migration
  def change
    create_table :shakes do |t|
      t.string :title
      t.string :shake_url

      t.timestamps
    end
  end
end

class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :user_id
      t.string :imageUrl
      t.string :useType

      t.timestamps
    end
  end
end

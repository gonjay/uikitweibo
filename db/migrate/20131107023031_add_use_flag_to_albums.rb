class AddUseFlagToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :useFlag, :integer
  end
end

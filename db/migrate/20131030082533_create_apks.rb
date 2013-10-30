class CreateApks < ActiveRecord::Migration
  def change
    create_table :apks do |t|
      t.string :version
      t.string :downloadUrl
      t.string :netType

      t.timestamps
    end
  end
end

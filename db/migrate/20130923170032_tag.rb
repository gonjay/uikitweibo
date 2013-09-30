class Tag < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :content

      t.timestamps
    end

    create_table :passages do |t|
      t.string  :title
      t.text    :content
      t.text    :images
      t.string  :postUrl
      t.string  :newsrecord
      t.integer :psgType

      t.timestamps
    end
  end
end
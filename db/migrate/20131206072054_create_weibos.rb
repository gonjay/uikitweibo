class CreateWeibos < ActiveRecord::Migration
  def change
    create_table :weibos do |t|
      t.integer :user_id
      t.string :content
      t.integer :favorite

      t.timestamps
    end
  end
end

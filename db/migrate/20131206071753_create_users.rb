class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickName
      t.string :avatarSrc
      t.string :genderStr

      t.timestamps
    end
  end
end

class AddimgSrcToWeibo < ActiveRecord::Migration
  def change
    add_column :weibos, :imgSrc, :string
  end
end

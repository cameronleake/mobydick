class AddHeaderImageToPost < ActiveRecord::Migration[5.1]
  def change
  	change_table :posts do |t|
      t.string :image 	
  	end
  end
end

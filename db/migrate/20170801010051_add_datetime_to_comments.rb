class AddDatetimeToComments < ActiveRecord::Migration[5.1]
  def change
  	add_column :comments, :datetime, :datetime
  end
end

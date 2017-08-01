class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.text :preview
      t.date :date

      t.timestamps
    end
  end
end

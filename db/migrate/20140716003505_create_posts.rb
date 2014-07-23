class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :post_title
      t.text :post_text
      t.timestamps
    end
  end
end

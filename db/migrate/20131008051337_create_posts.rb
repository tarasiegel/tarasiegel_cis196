class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.belongs_to :user
      t.date :date
      t.text :body

      t.timestamps
    end
    add_index :posts, :user_id
  end
end

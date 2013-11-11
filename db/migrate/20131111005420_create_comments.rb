class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :belongs_to
      t.integer :id
      t.string :body
      t.string :post_id
      t.string :user_id

      t.timestamps
    end
  end
end

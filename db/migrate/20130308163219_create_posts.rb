class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :tag
      t.date :published_date
      t.references :author

      t.timestamps
    end
    add_index :posts, :author_id
  end
end

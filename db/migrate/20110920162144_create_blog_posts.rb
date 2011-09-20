class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end

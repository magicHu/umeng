class CreatePosts < ActiveRecord::Migration
  def self.create
    create_table :posts do |t|
      t.text :content

      t.integer :like_posts_count, :default => 0
      t.integer :unlike_posts_count, :default => 0
      t.timestamps
    end
    
    create_table :unlike_posts do |t|
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
    
    create_table :like_posts do |t|
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
  
  def self.drop
    
  end
end

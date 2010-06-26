class RemoveArticlesCategories < ActiveRecord::Migration
  def self.up
    drop_table :articles_categories
  end

  def self.down
    create_table :articles_categories, :id => false do |t|
      t.integer :article_id
      t.integer :category_id
    end
  end
end

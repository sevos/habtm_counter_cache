class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.integer :articles_count
      t.timestamps
    end

    create_table :articles_categories, :id => false do |t|
      t.integer :article_id
      t.integer :category_id
    end
  end

  def self.down
    drop_table :articles_categories
    drop_table :categories
  end
end

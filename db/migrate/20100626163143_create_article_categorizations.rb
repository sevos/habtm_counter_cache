class CreateArticleCategorizations < ActiveRecord::Migration
  def self.up
    create_table :article_categorizations do |t|
      t.integer :article_id
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :article_categorizations
  end
end

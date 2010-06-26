class ArticleCategorization < ActiveRecord::Base
  belongs_to :article
  belongs_to :category
  
  after_create do |r|
    r.category.update_articles_count
  end

  after_destroy do |r|
    r.category.update_articles_count
  end
end

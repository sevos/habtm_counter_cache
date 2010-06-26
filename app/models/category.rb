class Category < ActiveRecord::Base
  has_many :article_categorizations, :dependent => :destroy
  has_many :articles, :through => :article_categorizations

  def update_articles_count
    update_attribute :articles_count, self.articles.count
  end
end

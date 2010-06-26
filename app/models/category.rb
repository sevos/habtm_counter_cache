class Category < ActiveRecord::Base
  has_and_belongs_to_many :articles

  def update_articles_count
    update_attribute :articles_count, self.articles.count
  end
end

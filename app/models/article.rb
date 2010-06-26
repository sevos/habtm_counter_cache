class Article < ActiveRecord::Base
  has_and_belongs_to_many :categories

  after_save :update_counters
  
  before_destroy :cache_categories
  after_destroy :update_counters
  
  private
  
  def cache_categories
    @cached_categories = self.categories.all
  end
  
  def update_counters
    (@cached_categories || self.categories).each(&:update_articles_count)
  end
end

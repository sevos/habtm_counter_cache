class Article < ActiveRecord::Base
  has_many :article_categorizations, :dependent => :destroy
  has_many :categories, :through => :article_categorizations
end

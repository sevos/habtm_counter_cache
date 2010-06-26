require 'spec_helper'

describe Article do
  before(:each) do
    @valid_attributes = {
      :title => "value for title"
    }
  end

  it "should create a new instance given valid attributes" do
    Article.create!(@valid_attributes)
  end

  it "should update counters of categories after save" do
    category = Category.create!(:name => "Category")
    article = Article.create!(@valid_attributes)

    article.categories = [category]
    article.save!
    
    category.reload.articles_count.should == 1
  end

  it "should update counters of categories after destroy" do
    category = Category.create!(:name => "Category")
    article = Article.create!(@valid_attributes)

    article.categories = [category]
    article.save!
    article.destroy

    category.reload.articles_count.should == 0
  end
end

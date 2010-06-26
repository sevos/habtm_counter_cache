require 'spec_helper'

describe Category do
  before(:each) do
    @valid_attributes = {
      :name => "value for name"
    }
  end

  it "should not update counters if we are destroying category" do
    category = Category.create!(:name => "Category")
    article = Article.create!(:title => "article", :categories => [category])

    lambda { category.destroy }.should_not raise_error

    article.reload.categories.should == []
    ArticleCategorization.count.should be_zero
  end
end
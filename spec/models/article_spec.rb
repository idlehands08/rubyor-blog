require 'rails_helper'

RSpec.describe Article, type: :model do 

  let!(:article) {Article.new}

  context 'when article is filled' do 
    it "is not a valid title" do 
      article.content = 'Test Content'
      article.title = nil

      expect(article).to_not be_valid
      expect(article.errors).to be_present
      expect(article.errors.to_hash.keys).to include(:title)
    end

    it 'should be unique' do 
      Article.create(:title => 'Duplicate title', :content => 'Content')
      article.title = 'Duplicate title'

      expect(article).to_not be_valid
      expect(article.errors).to be_present
      expect(article.errors.to_hash.keys).to include(:title)
      expect(article.errors[:title]).to include('should be unique')
    end

  end

end

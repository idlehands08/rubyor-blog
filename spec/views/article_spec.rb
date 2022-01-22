require 'rails_helper'

RSpec.describe 'Articles', type: :feature do 
  describe 'View all articles' do 
    before {visit articles_path}

    it 'shows all the articles in the body' do 
      within 'body' do
        expect(page).to have_content('All Articles')
        expect(page).to have_content('New Article')
      
      end
    end

    describe "Create a new article" do
      before {visit new_article_path}
        it 'Successfully create a new article' do 
          fill_in 'article_title', with: 'Testing Title'
          fill_in 'Author', with: 'Testing Author'
          fill_in 'Content', with: 'The quick brown fox jumped over the lazy dog'
          click_button('Create Article')
          expect(page).to have_content('Testing Title')
          expect(page).to have_content('Testing Author')
          expect(page).to have_content('The quick brown fox jumped over the lazy dog')
          expect(page).to have_current_path(articles_path)
        end
    end

  end
end
class ArticlesController < ApplicationController
    def index
        @articles = Article.all 
        #Instance variable sa isang class
        

    end

    def two
    end
end

#CRUD 

#GET /articles => articles#index
#GET /articles/#(id) => articles#show

#GET /articles/new => articles#new
#POST /articles => articles#create

#GET /articles 
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  resources :articles do
    resources :comments
  end
#   get '/articles' => 'articles#index'
#   get '/articles/new' => 'articles#new'  
#   post '/articles' => 'articles#create'
#   get '/articles/:id/edit' => 'articles#edit'
#   put '/articles/:id' =>
#   get '/articles/:id' => 'articles#show'
#get '/articles/two' => 'articles#two'

  scope module: 'api', path: 'separate_path', as: 'different_prefix' do 
    get '/today_quote', to: 'quotes#index'

    # - In this scenario, v1 and v2 are folders within controllers
    # namespace :v1 do
    #   get '/today_quote', to: 'quotes#index'
    # end

    # namespace :v2 do
    #   get '/today_quote', to: 'quotes#index'
    # end
    
  end
end

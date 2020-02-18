Rails.application.routes.draw do
  # root "pages#home"
  # get '/about', to: "pages#about"
  # get '/help', to: "pages#help
  # root "cooks#food"
  # get '/about', to: "cooks#about"
  # get '/help', to: "cooks#help"
  # root "pedrams#cando"
  # root "poons#movie"
  # root "agencies#gabrial"
  # root controller#action
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todos
  resources :books
  resources :tests
  resources :articles
  
end

Rails.application.routes.draw do
  # root 'cats#index'
  get '/cats/', to: 'cats#index'
  get '/cats/:id', to: 'cats#show', as: 'cat'
  get '/create', to: 'cats#new'
  post '/create', to: 'cats#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :cats
end

Rails.application.routes.draw do
  root 'static#home'
  get '/help', to: 'static#help'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'
  get '/signup', to:'users#new'
  post '/signup',  to: 'users#create'
  
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

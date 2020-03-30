Rails.application.routes.draw do
  resources :memos
  post '/signup', to:'users#create'
  get  '/signup',to:'users#new'
  resources :user
end

Rails.application.routes.draw do
  resources :children, only: :index
  # resources :user, only: :create
  
  get'/students', to: 'users#show_students'
  get'/children', to: 'users#show_children'
  
  
  patch'/child/:id', to: 'users#update_children'

  
  get'/login', to: 'sessions#create'
  delete'/logout', to:'sessions#destroy'

  post'/signup', to: 'users#create'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

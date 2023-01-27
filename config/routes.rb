Rails.application.routes.draw do
  resources :children
  resources :schools, only: :index
  resources :users, only: [:update, :destroy]
  
  get'/students', to: 'users#show_students'
  get'/kids', to: 'users#show_children'
  
  
  # patch'/child/:id', to: 'users#update_children'
  get '/teachers', to: 'users#show_teachers'
  
  post'/login', to: 'sessions#create'
  delete'/logout', to:'sessions#destroy'

  post'/signup', to: 'users#create'
  get '/me', to: 'users#show'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

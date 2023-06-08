Rails.application.routes.draw do
  resources :clients
  get 'contacts/index'
  get 'projects/index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  root to: 'pages#index'

  get 'resume/index'

  get 'articles', to: 'articles#index'
  get 'articles/new', to: 'articles#new', as: 'new_article'
  get 'articles/:id', to: 'articles#show', as: 'article'

  post 'articles', to: 'articles#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

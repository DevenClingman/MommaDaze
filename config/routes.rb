Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  get 'home', to: 'pages#home'

  get 'about', to: 'pages#about'
  get 'most_dazed', to: 'pages#mostdazed'

  match 'posts/search' => 'posts#search', :via => :get
  match 'posts/submitted' => 'posts/submitted', :via => :get
  
  resources :posts do
    member do
      get :toggle_status
      delete :delete_submitted
    end
  end

  match 'blogs/search' => 'blogs#search', :via => :get

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

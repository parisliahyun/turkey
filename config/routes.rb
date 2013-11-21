Turkey::Application.routes.draw do
  # devise_for :installs
  # devise_for :users
  
  resources :dishes

  root 'welcome#index'
end

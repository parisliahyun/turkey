Turkey::Application.routes.draw do
  # devise_for :users
  # devise_for :installs
  resources :dishes

  root 'welcome#index'
end

Turkey::Application.routes.draw do
  devise_for :users
  # resources :dishes
  root 'welcome#index'
end

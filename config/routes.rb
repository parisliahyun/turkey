Turkey::Application.routes.draw do
  devise_for :users
  resources :users, only: :show do
     post :generate_new_password_email
  end
  # resources :dishes
  root 'welcome#index'
end

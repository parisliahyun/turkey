Turkey::Application.routes.draw do
  devise_for :users
  resources :users, only: :show do
     post :generate_new_password_email
  end

  get 'message/compose', to: 'messages#new', as: :compose

  resources :messages do
    collection do
      get 'index', to: 'messages#index', as: :index
      get 'sent', to: 'messages#sent', as: :sent
      post 'reply', to: 'messages#reply', as: :reply
      post 'trash', to: 'messages#trash', as: :trash
    end
  end

  post 'mailbox/empty_trash', to: 'mailboxes#empty_trash', as: :empty_trash
  get 'mailbox/:mailbox', to: 'mailboxes#show', as: :mailbox
  get 'mailbox/:mailbox/:id', to: 'messages#show', as: :mailbox_message

  # resources :dishes
  root 'welcome#index'
end

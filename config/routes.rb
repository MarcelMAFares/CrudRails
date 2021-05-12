Rails.application.routes.draw do
  resources :contatos
  root 'users#welcome'

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :account do
    resources :projects do
        resources :tasks
    end
  end
  root 'dashboard#index'
  get 'hello_world', to: 'hello_world#index'
end

Rails.application.routes.draw do
  namespace :account do
    resources :projects do
        resources :tasks
    end
  end
  root 'dashboard#index'
end

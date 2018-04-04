Rails.application.routes.draw do
  devise_for :categories, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users,
    path: ''

  resources :datespot do
    resources :category
  end

  constraints subdomain: 'api' do 
    namespace :api, path: '/' do
      resources :datespots
    end
  end
end

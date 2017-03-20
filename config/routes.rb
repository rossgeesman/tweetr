Rails.application.routes.draw do
  root to: 'welcome#index', as: :public_root
  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions'}

  get '/tweets/search', to: 'tweets#search'
end

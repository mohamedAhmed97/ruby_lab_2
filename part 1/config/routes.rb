Rails.application.routes.draw do
  get 'sessions/login,'
  get 'sessions/home,'
  get 'sessions/profile,'
  get 'sessions/setting'
  get 'welcome/index'
  resources :articles
  resources :articles do
    resources :comments  
  end
  resources :users
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

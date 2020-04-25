Rails.application.routes.draw do
  get 'sessions/login,'
  get 'sessions/home,'
  get 'sessions/profile,'
  get 'sessions/setting'
  get 'users/new'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

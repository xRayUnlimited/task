Rails.application.routes.draw do
  root 'things#index'

  get 'about/', to: 'static_pages#about'
  resources :things

end

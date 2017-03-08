Rails.application.routes.draw do
  devise_for :users
  resources :pujas
  resources :pictures
  root 'lineages#index'

end

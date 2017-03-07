Rails.application.routes.draw do
  resources :pujas
  resources :pictures
  root 'lineages#index'

end

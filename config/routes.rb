Rails.application.routes.draw do
  resources :pujas
  root 'lineages#index'

end

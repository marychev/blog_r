Rails.application.routes.draw do
  root "tars#index"

  resource :tars

  resources :articles do
    resources :comments
  end
end

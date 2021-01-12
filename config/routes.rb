Rails.application.routes.draw do
  root "tars#index"

  resource :tars do
    get 'show-tmp', to: 'tars#show_tmp'
    get 'clear-tmp', to: 'tars#clear_tmp'
    get 'download', to: 'tars#download'
    get 'download-small-local', to: 'tars#download_small_local'
  end

  resources :articles do
    resources :comments
  end
end

root_to_article = "articles#index"

Rails.application.routes.draw do
  root root_to_article
  # get "/articles", to: root_to_article
  # get "/articles/:id", to: "articles#show"

  resources :articles do
    resources :comments
  end
end

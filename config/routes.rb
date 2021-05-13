Rails.application.routes.draw do
  root "articles#index"

  # Rails provides a routes method
  # named resources that maps all of the conventional routes for a collection
  # of a resources.
  resources :articles do
    resources :comments
  end
  
end

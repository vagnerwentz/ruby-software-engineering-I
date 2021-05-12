Rails.application.routes.draw do
  root "articles#index"

  resources :articles # Rails provides a routes method
  # named resources that maps all of the conventional routes for a collection
  # of a resources.
end

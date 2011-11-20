Chima::Application.routes.draw do
  root :to => 'up_sizes#index'
  resources :down_sizes
  resources :up_sizes do
    collection {
      get :batch_new
      post :batch_create
    }
  end
  resources :sizes
  resources :models
  resources :brands
end

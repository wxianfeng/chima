Chima::Application.routes.draw do
  root :to => 'up_sizes#index'
  resources :down_sizes
  resources :up_sizes do
    collection {
      get :new_batch
      post :create_batch
    }
  end
  resources :sizes
  resources :models
  resources :brands
end

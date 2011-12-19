Chima::Application.routes.draw do
  root :to => 'welcome#step1'

  match "/welcome/:action" , :controller => "welcome" , :as => "welcome"

  namespace :admin do
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
    resources :items
    resources :forecast_wsizes
    resources :forecast_msizes
  end
end

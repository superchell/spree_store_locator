Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :retail_stores, except: :show
  end

  resources :retail_stores, only: :index, path: :store_locator
end


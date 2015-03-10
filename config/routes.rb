Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :store_locators, except: :show
  end

  resources :store_locators, only: :index, path: :store_locator
end


module Spree
  class RetailStoresController < Spree::StoreController
    def index
      @stores = Spree::RetailStore.all
    end
  end
end


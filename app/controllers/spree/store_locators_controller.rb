module Spree
  class StoreLocatorsController < Spree::StoreController
    def index
      @store_locators = Spree::StoreLocator.all
    end
  end
end
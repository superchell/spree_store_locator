module Spree
  class StoreLocatorsController < Spree::StoreController
    def index
      @store_locators = Spree::StoreLocator.all
    end

    def show
      @store_location = Spree::StoreLocator.find(params[:id])
    end
  end
end
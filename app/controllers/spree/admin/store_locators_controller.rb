module Spree
  class Admin::StoreLocatorsController < Admin::ResourceController
    private

    def find_resource
      @store_locator = Spree::StoreLocator.friendly.find params[:id]
    end
  end
end


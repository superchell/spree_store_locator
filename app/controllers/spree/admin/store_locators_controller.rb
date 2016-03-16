module Spree
  class Admin::StoreLocatorsController < Admin::ResourceController
    def index
      @search = Spree::StoreLocator.ransack(params[:q])
      @collection = @search.result(distinct: true).page(params[:page]).per(Spree::Config[:admin_products_per_page])
    end

    private

    def find_resource
      @store_locator = Spree::StoreLocator.friendly.find params[:id]
    end
  end
end


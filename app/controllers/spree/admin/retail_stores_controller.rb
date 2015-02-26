module Spree
  module Admin
    class RetailStoresController < Spree::Admin::BaseController
      before_action :find_store, only: [:edit, :update, :destroy]

      def index
        load_stores
        @store  = Spree::RetailStore.new
      end

      def edit
        
      end

      def create
        @store = Spree::RetailStore.new store_params

        if @store.save
          redirect_to admin_retail_stores_path
        else
          load_stores
          flash[:error] = 'There was an error.'

          render :index
        end
      end

      def update
        @store.update_attributes store_params

        redirect_to admin_retail_stores_path
      end

      def destroy
        @store.destroy

        redirect_to admin_retail_stores_path
      end

      private

      def load_stores
        per_page = params[:per_page] || 20
        @stores = Spree::RetailStore.state_ordered.page(params[:page]).per(per_page)
      end

      def find_store
        @store = Spree::RetailStore.find_by id: params[:id]
      end

      def store_params
        params.require(:retail_store).permit(
          :address1,
          :address2,
          :city,
          :country,
          :name,
          :phone,
          :state,
          :website,
          :zip
        )
      end
    end
  end
end


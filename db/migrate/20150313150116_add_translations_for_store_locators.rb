class AddTranslationsForStoreLocators < ActiveRecord::Migration
  def change
    params = { name: :string, address1: :string, address2: :string, city: :string, state: :string, zip: :string, country: :string }
    Spree::StoreLocator.create_translation_table!(params, { migrate_data: true })
  end
  
  def down
    Spree::StoreLocator.drop_translation_table! migrate_data: true
  end
end

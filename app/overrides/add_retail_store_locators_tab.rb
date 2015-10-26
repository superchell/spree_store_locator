Deface::Override.new(virtual_path: 'spree/layouts/admin',
                     name: 'add_retail_store_locators_tab',
                     insert_bottom: "[data-hook='admin_tabs']",
                     partial: 'spree/admin/shared/store_locator_menu')

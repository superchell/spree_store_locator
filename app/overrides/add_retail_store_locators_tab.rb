Deface::Override.new(virtual_path: 'spree/admin/shared/_configuration_menu',
                     name: 'add_retail_store_locators_tab',
                     insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
                     text: '<%= configurations_sidebar_menu_item Spree.t("store_locator.menu"), admin_store_locators_url %>')

Deface::Override.new(virtual_path: 'spree/admin/shared/_main_menu',
                     name: 'add_retail_store_locators_tab',
                     insert_before: "erb[silent]:contains('Spree.user_class')",
                     partial: 'spree/admin/shared/store_locator_menu') 

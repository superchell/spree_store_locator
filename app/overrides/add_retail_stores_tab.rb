Deface::Override.new(virtual_path: 'spree/admin/shared/_tabs',
  name: 'add_retail_stores_tab',
  insert_after: "erb[silent]:contains('if can? :admin, Spree::Promotion')",
  text: "
    <%= tab :retail_stores, icon: 'map-marker', url: admin_retail_stores_path %>
  "
)

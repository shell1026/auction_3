ActiveAdmin.register Item do
permit_params :item_name, :description, :value, :starting_bid, :incr, :donor, :photo, :category

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :item_name, :description, :value, :starting_bid, :incr, :donor, :photo, :category
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end

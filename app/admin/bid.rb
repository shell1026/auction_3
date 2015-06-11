ActiveAdmin.register Bid do
  permit_params :user_id, :bid_amount, :item_id
  index do
    selectable_column
    id_column
    column :user_id
    column "User Name" do |bid|
      bid.user.user_name
    end
    column "First Name" do |bid|
      bid.user.first_name
    end
    column "Last Name" do |bid|
      bid.user.last_name
    end
    column :bid_amount
    column :item_id
    column :created_at
    column :updated_at
    actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end

ActiveAdmin.register Bid do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :item_id, :user_id, :bid_amount
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    column :id
    column "User" do |bid|
      user = bid.user
      if user
        link_to bid.user.try(:user_name), admin_user_path(bid.user)
      end
    end
    column :bid_amount
    column :created_at
    column :updated_at
    actions
  end


end

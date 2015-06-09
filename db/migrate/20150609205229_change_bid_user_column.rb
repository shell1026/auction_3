class ChangeBidUserColumn < ActiveRecord::Migration
  def change
    rename_column :bids, :user_name, :user_id
  end
end

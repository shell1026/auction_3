class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :item_id
      t.string :user_name
      t.integer :bid_amount

      t.timestamps

    end
  end
end

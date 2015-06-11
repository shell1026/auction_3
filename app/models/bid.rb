class Bid < ActiveRecord::Base
validates :item_id, presence: true
validates :user_id, presence: true
validates :bid_amount, presence: true

belongs_to :user
belongs_to :item

end

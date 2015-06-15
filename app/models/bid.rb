class Bid < ActiveRecord::Base
validates :item_id, presence: true
validates :user_id, presence: true
validates :bid_amount, presence: true
validates_uniqueness_of :bid_amount, scope: :item_id, :notice => "bid must be higher than current high bid"
#above validation causing error if you bid the same amount as existing high bid

belongs_to :user
belongs_to :item

end

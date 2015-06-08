class Item < ActiveRecord::Base

has_many :users, through: :bids
end

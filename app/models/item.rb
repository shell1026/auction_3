class Item < ActiveRecord::Base

validates :description, presence: true
validates :value, presence: true
validates :starting_bid, presence: true
validates :increment, presence: true
validates :donor, presence: true
validates :photo, presence: true
validates :category,  presence:true

has_many :bids
has_many :users, through: :bids
end

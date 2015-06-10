class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
validates :last_name, presence: true
validates :first_name, presence: true
validates :address, presence: true
validates :city, presence: true
validates :state, presence: true
validates :zip, presence: true
validates :phone, presence: true
validates :email, presence: true

has_many :bids
has_many :items, through: :bids
end

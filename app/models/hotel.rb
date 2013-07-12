class Hotel < ActiveRecord::Base
  attr_accessible :address_id, :star_rating, :title
  has_many :user_hotels
  has_many :users, through: :user_hotels
  	validates :title, presence: true, 
 					length: { maximum: 50 }
	validates :star_rating, presence: true
end

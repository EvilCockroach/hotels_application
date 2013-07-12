class UserHotel < ActiveRecord::Base
  attr_accessible :comment, :hotel_id, :rating, :user_id
  belongs_to :user
  belongs_to :hotel
end

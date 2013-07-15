class UserHotel < ActiveRecord::Base
  attr_accessible :comment, :rating
  belongs_to :user
  belongs_to :hotel
end

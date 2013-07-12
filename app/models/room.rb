class Room < ActiveRecord::Base
  attr_accessible :breakfast_included, :hotel_id, :price, :room_type
end

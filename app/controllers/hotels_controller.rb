class HotelsController < ApplicationController
  def index
  	@hotels = Hotel.all
  	@hotels.each do |h|
      	@hotel = h.title
      	puts @hotel
      	end
  end
end

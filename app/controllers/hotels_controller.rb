class HotelsController < ApplicationController
  def index
  	@hotels = User.all
  end
end

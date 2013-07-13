class HotelsController < ApplicationController
  def index
  	@hotels = Hotel.all
  end
  def new
  	@hotel = Hotel.new
  	@address = Address.new
  end

  def create
  @hotel = Hotel.new(params[:hotel])
  @address = @hotel.address.build(params[:address])
  if @hotel.save
    redirect_to :action => 'index'
  else
    render :action => 'new'
  end
end

end

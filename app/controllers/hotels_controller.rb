class HotelsController < ApplicationController
  def index
  	@hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
  	@hotel = Hotel.new
  	@address = Address.new
  end

  def create
    @hotel = Hotel.new(params[:hotel])
    @hotel.address = Address.new(params[:address])
      
  if @hotel.save
  	
    
    redirect_to @hotel
  else
    render :action => 'new'
  end
end

end

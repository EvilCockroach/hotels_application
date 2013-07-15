class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
   @address_attr = Address.find_by_hotel_id(params[:id]).attributes
   @address_ = {"country" => @address_attr['country'],
                "state" => @address_attr['state'],
                "city" => @address_attr['city'],
                "street" => @address_attr['street'] }
    @address2 = []
    @address_.each do  |a|  
      if !a[1].blank? then @address2.push(a[1])
      end
        end
      @address2 = @address2.join(", ")
  
   
  
  
end
 

  def new
    @hotel = Hotel.new
    @address = Address.new
    @user_hotel = UserHotel.new
  end

  def create
    @hotel = Hotel.new(params[:hotel])
    @hotel.address = Address.new(params[:address])
    @hotel.user_hotel = UserHotel.new(params[:user_hotel])
      
  if @hotel.save
    
    
    redirect_to @hotel
  else
    render :action => 'new'
  end
end

def edit
  @hotel = Hotel.find(params[:id])
end

def update
  @hotel = Hotel.find(params[:id])
 
  if @hotel.update(params[:hotel].permit(:title))
    redirect_to @hotel
  else
    render 'edit'
  end
end

#def update
#    @hotel = Hotel.find(params[:id])
  #  @hotel.address = Address.new(params[:address])
  #    if @hotel.address.update(params[:address])
  #   render :action => 'new'
 # else
  #  render :action => 'new'
 # end
#end

end

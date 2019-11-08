class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

   def show
   @guest = Guest.find(params[:id])
   end 

   def new
     @guest = Guest.new
   end

   def create
      @guest = Guest.create(guest_params(:date,:number))
      redirect_to show
   end

   private
    def guest_params(*args)
     params.require(:guest).permit(*args)
    end
  
end

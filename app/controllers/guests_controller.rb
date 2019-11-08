class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :destroy]
  def index
    if params[:search]
      @guests = Guest.search(params[:search])
    else
      @guests = Guest.all
    end
  end

  def show
  end

  def new
    @guest = Guest.new
    @errors = flash[:errors]
  end

  def create
    @guest = Guest.create(guest_params)

    if @guest.valid?
      redirect_to @guest      
    else
      flash[:errors] = @guest.errors.full_messages
      redirect_to new_guest_path
    end
  end

  def destroy
  end


  private

  def guest_params
    params.require(:guest).permit(:name, :occupation, :search)
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end

end

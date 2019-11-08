class AppearancesController < ApplicationController
  def new
    @appearance=Appearance.new
    @errors=flash[:errors]
  end

  def create
    @appearance=Appearance.find_by(id: params[:id])
    @appearance=Appearance.new(appearances_params(:rating, :guest_id, :episode_id))
    if @appearance.valid?
      @appearance.save
      redirect_to episodes_path
    else
      flash[:errors]= @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end

  private
  def appearances_params(*args)
    appearances_params.require(:appearance).permit(:rating, :guest_id, :episode_id)
  end

end

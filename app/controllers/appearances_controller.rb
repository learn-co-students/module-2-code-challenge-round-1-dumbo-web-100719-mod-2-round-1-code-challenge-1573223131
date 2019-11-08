class AppearancesController < ApplicationController

def new
    @appearance = Appearance.new
    @errors = flash[:errors]
end

def create
    @appearance = Appearance.create(params.require(:appearance).permit(:episode_id, :guest_id, :rating))
    if @appearance.valid?
        redirect_to @appearance.episode
    else 
        flash[:errors] = @appearance.errors.full_messages
        redirect_to new_appearance_path
    end
end

end
